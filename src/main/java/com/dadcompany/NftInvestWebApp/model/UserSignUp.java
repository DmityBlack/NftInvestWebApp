/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dadcompany.NftInvestWebApp.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.Size;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Data
@NoArgsConstructor
public class UserSignUp {
    @NotEmpty
    @Email
    private String logEmail;
    @NotEmpty
    @Size (min=5, max=30)
    private String password;
}
