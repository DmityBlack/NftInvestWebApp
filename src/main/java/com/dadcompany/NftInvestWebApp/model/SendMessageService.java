/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dadcompany.NftInvestWebApp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data 
@NoArgsConstructor
public class SendMessageService {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "service_id", nullable = false)
    private Long id;
    @NotEmpty
    @Size (min=20, max=2000)
    @Column(name = "serviceMessages")
    private String serviceMessages;
}
