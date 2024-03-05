
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class UserRegistrController {
    
    private UserService userService;
    
    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }
    
    @GetMapping("/registration")
    public String newRegistration(ModelMap model) { 
        User user = new User ();
        model.addAttribute("user", user);
        
        return "registration";  
    } 
    
    
     
    @PostMapping("/registration")
    public String saveRegistration(@Valid User user, BindingResult result, ModelMap model) {
        if (result.hasErrors()) { 
            return "errorRegistrationValid";
            
        }
        List <User> allUsersData = userService.findAllUsers();
        for (User usersList : allUsersData) {
            if(usersList.getEmail().equalsIgnoreCase(user.getEmail())){
                return "errorRegistrationEmail";
            }
        }
        
        userService.addNewUser(user);
        model.addAttribute("success", user);
        return "success";
    } 
    
    
}
