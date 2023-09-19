/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.httn.service.impl;


import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.httn.repository.ServiceRepository;
import com.httn.service.ServiceService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public class ServiceServiceImpl implements ServiceService{

    @Autowired
    private ServiceRepository serviceRepository;
    @Autowired
    private Cloudinary cloudinary;
    @Override
    public List<com.httn.pojo.Service> getServices(Map<String, String> params, int page) {
        return this.serviceRepository.getServices(params, page);
    }
    @Override
    public int countService() {
        return this.serviceRepository.countService();
    }

    @Override
    public boolean addService(com.httn.pojo.Service s) {
        //s.setImage("https://toplist.vn/images/800px/song-anh-wedding-amp-events-436987.jpg");
        try {          
            Map r = this.cloudinary.uploader().upload(s.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            s.setImage((String) r.get("secure_url"));
            
            return this.serviceRepository.addService(s);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return false;
        //return this.serviceRepository.addService(s);
    }

    @Override
    public boolean deleteService(int id) {
        return this.serviceRepository.deleteService(id);
    }

    @Override
    public com.httn.pojo.Service getServiceById(int id) {
        return this.serviceRepository.getServiceById(id);
    }

    @Override
    public boolean updateService(com.httn.pojo.Service s) {
        try {          
            Map r = this.cloudinary.uploader().upload(s.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            s.setImage((String) r.get("secure_url"));
            
            return this.serviceRepository.updateService(s);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
