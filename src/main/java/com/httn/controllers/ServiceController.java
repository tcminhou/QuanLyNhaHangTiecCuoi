/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.httn.controllers;

import com.httn.service.CategoryService;
import com.httn.service.ServiceService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author HP
 */
@Controller
@PropertySource("classpath:messages.properties")
public class ServiceController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ServiceService serviceService;
    @Autowired
    private Environment env;
//    địa chỉ request
    @RequestMapping("/service")
    public String service(Model model, @RequestParam Map<String, String> params){
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("categories", this.categoryService.getCategories());
        model.addAttribute("services", this.serviceService.getServices(params, page));
        model.addAttribute("serviceCounter", this.serviceService.countService());
        model.addAttribute("pageSize", Integer.parseInt(env.getProperty("page.size")));
        return "service"; //trả về jsp
    }
    //xem chi tiết sản phẩm
    @GetMapping("/service/{productId}")
    public String productDetails(Model model,   
        @PathVariable(value = "productId") int id) {
        model.addAttribute("product", this.serviceService.getServiceById(id));
        
        return "serviceDetail";
    }

    
}
