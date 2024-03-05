package com.dadcompany.NftInvestWebApp.controller;

import com.dadcompany.NftInvestWebApp.model.SendMessageService;
import com.dadcompany.NftInvestWebApp.model.User;
import com.dadcompany.NftInvestWebApp.model.UserSignUp;
import com.dadcompany.NftInvestWebApp.service.MessagesService;
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
public class ServiceMessagesController {
    
    private MessagesService messagesService;
    
    @Autowired
    public void setMessagesService(MessagesService messagesService) {
        this.messagesService = messagesService;
    }
    
    @GetMapping("/mainPageServices_Autorize")
    public String mainServicesAutorize(ModelMap model) {
        SendMessageService sendMessageService = new SendMessageService();
        model.addAttribute("sendMessageService", sendMessageService);
        return "mainPageServices_Autorize";
    }

    

    @PostMapping("/mainPageServices_Autorize")
    public String sendServiceMessage(@Valid SendMessageService sendMessageService, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "mainPageServices_Autorize";

        }
        messagesService.addNewUserMessage(sendMessageService);
        return "successSendMessagesService";
    }
}
