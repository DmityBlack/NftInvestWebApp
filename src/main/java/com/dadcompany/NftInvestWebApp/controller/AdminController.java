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
public class AdminController {

    
    @GetMapping("/adminMainPage")
    public String adminMainPage(ModelMap model) {
        return "adminPages/adminMainPage";
    }
       
    @GetMapping("/changeAdminUserStatus")
    public String changeAdminUserStatus(ModelMap model) {
        
        return "adminPages/changeAdminUserStatus";
    }
   
    @GetMapping("/LettersAdminPage")
    public String LettersAdminPage(ModelMap model) {
        
        return "adminPages/LettersAdminPage";
    }
    
}
