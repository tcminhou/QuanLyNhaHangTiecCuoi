/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.httn.controllers;

import com.httn.pojo.Service;
import com.httn.service.ServiceService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author PC
 */
@Controller
@RequestMapping("/employ")
public class EmployServiceController {
    @Autowired
    private ServiceService serviceService;

    @GetMapping("/service")
    public String list(Model model) {
        //tạo một service rỗng
        model.addAttribute("service", new Service());
        return "employService";
    }

    @PostMapping("/service")
    public String add(@ModelAttribute(value = "service") @Valid Service s,
            BindingResult rs) {
        if (rs.hasErrors()) {
            return "redirect:/";
        }

        if (this.serviceService.addService(s) == true) {
            return "employService";
        }

        return "employService";
    }
    
    //    cập nhật thông tin dịch vụ
    @GetMapping("/updateService/{id}")
    public String viewUpdateService(Model model, @PathVariable(value="id") int id){
         model.addAttribute("service", new Service());
         model.addAttribute("serviceId", id);
        return "employUpdateService";
    }
    
    @PostMapping("/updateService/{id}")
    public String UpdateService(@ModelAttribute(value = "service") @Valid Service s, BindingResult rs){
        if (rs.hasErrors()) {
            return "employUpdateService";
        }

        if (this.serviceService.updateService(s) == true) {
            return "redirect:/employ/service";
        }

        return "employUpdateService";
    }
}
