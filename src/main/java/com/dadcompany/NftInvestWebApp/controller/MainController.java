/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dadcompany.NftInvestWebApp.controller;

import com.dadcompany.NftInvestWebApp.model.User;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {
    
    @GetMapping("/mainPageAboutUs")
    public String mainAboutUs(ModelMap model) {
        return "mainPageAboutUs";
    } 
    @GetMapping("/mainPageProjects")
    public String mainProjects(ModelMap model) {
        return "mainPageProjects";
    } 
    @GetMapping("/mainPageServices")
    public String mainServices(ModelMap model) {
        return "mainPageServices";
    } 
    @GetMapping("/mainPageContacts")
    public String mainContacts(ModelMap model) {
        return "mainPageContacts";
    } 

    @GetMapping("/mainPageAboutUs_Autorize")
    public String mainAboutUsAutorize(ModelMap model) {
        return "mainPageAboutUs_Autorize";
    }
    @GetMapping("/mainPageProjects_Autorize")
    public String mainProjectsAutorize(ModelMap model) {
        return "mainPageProjects_Autorize";
    }
//    @GetMapping("/mainPageServices_Autorize")
//    public String mainServicesAutorize(ModelMap model) {
//        return "mainPageServices_Autorize";
//    }
    @GetMapping("/mainPageContacts_Autorize")
    public String mainContactsAutorize(ModelMap model) {
        return "mainPageContacts_Autorize";
    }
}
