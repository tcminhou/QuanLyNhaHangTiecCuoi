/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.httn.controllers;

import com.httn.service.StatsService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author PC
 */
@Controller
@RequestMapping("/employ")
public class EmployWeddingController {

    @Autowired
    private StatsService statsService;

    @GetMapping("/wedding")
    public String loadWedding(Model model, @RequestParam(required = false) Map<String, String> params) {
        model.addAttribute("weddingStats", this.statsService.weddingStas(params));
        return "employWedding";
    }
}
