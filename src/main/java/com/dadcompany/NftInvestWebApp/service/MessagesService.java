/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dadcompany.NftInvestWebApp.service;

import com.dadcompany.NftInvestWebApp.model.SendMessageService;
import com.dadcompany.NftInvestWebApp.repository.UsersMessagesRepository;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@NoArgsConstructor
public class MessagesService {
    private UsersMessagesRepository messagesRepository;
    @Autowired
    public void setMessagesRepository(UsersMessagesRepository messagesRepository) {
        this.messagesRepository = messagesRepository;
    }
    
    @Transactional
    public void addNewUserMessage(SendMessageService sendMessageService){
        messagesRepository.saveAndFlush(sendMessageService);
    }
}
