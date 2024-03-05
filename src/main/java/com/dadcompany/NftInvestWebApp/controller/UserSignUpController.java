/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dadcompany.NftInvestWebApp.controller;

import com.dadcompany.NftInvestWebApp.model.User;
import com.dadcompany.NftInvestWebApp.model.UserSignUp;
import com.dadcompany.NftInvestWebApp.service.UserService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class UserSignUpController {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String signUp(ModelMap model) {
        UserSignUp userSignUp = new UserSignUp();
        model.addAttribute("userSignUp", userSignUp);
        return "mainPageRegAndSign";
    }

    @PostMapping("/")
    public String userAutorize(@Valid UserSignUp userSignUp, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "mainPageRegAndSign";

        }
        List<User> allUsersData = userService.findAllUsers();
        for (User usersList : allUsersData) {
            if (usersList.getEmail().equalsIgnoreCase(userSignUp.getLogEmail())
                    && usersList.getPassword().equals(userSignUp.getPassword())) {

                if (usersList.getStatus().equalsIgnoreCase("user")) {
                    model.addAttribute("success", usersList.getFirstName());
                    return "success";
                }
                if (usersList.getStatus().equalsIgnoreCase("admin")) {
                    model.addAttribute("allUsersData", allUsersData);
                    return "adminPages/adminMainPage";
                }
            }
        }

        return "mainPageRegAndSign";
    }
}
