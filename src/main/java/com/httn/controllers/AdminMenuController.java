/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.httn.controllers;


import com.httn.pojo.Menu;
import com.httn.service.MenuService;
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
 * @author HP
 */

@Controller
@RequestMapping("/admin")
public class AdminMenuController {
    @Autowired
    private MenuService menuService;
    @GetMapping("/menu")
    public String list(Model model){
        //tạo một lobby rỗng
        model.addAttribute("menu", new Menu());
        return "adminMenu";
    }
    
    @PostMapping("/menu")
    public String add(@ModelAttribute(value = "menu") @Valid Menu m,
            BindingResult rs) {
        if (rs.hasErrors())
            return "redirect:/";
        
       if (this.menuService.addMenu(m) == true)
           return "adminMenu";
    
       return "adminMenu";
    }
    //cập nhật thông tin menu
    @GetMapping("/updateMenu/{id}")
    public String viewUpdateMenu(Model model, @PathVariable(value="id") int id){
         model.addAttribute("menu", new Menu());
         model.addAttribute("menuId", id);
        return "updateMenu";
    }
    
    @PostMapping("/updateMenu/{id}")
    public String UpdateMenu(@ModelAttribute(value = "menu") @Valid Menu m, BindingResult rs){
        if (rs.hasErrors()) {
            return "redirect:/";
        }

        if (this.menuService.updateMenu(m) == true) {
            return "redirect:/admin/menu";
        }

        return "updateMenu";
    }
}

    
    
