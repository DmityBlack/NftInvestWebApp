
package com.dadcompany.NftInvestWebApp.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;


@Entity
@Data // работа с классом как с POJO объектом getters,setters,toString,hashCode
@NoArgsConstructor//создает пустой конструктор
public class User  {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;
    @NotEmpty
    @Size (min=3, max=30)
    @Column(name = "first_name")
    private String firstName;
    @NotEmpty
    @Size (min=3, max=30)
    @Column(name = "last_name")
    private String lastName;
    @Email
    @NotEmpty
    @Column(name = "email")
    private String email;
    @NotEmpty
    @Column(name = "phone_number")
    private String phoneNumber;
    @NotEmpty
    @Size (min=5, max=30)
    @Column(name = "password")
    private String password;
    @Column(name = "status")
    private String status = "user";
    
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "id")
    private List <SendMessageService> serviceMessages = new ArrayList<>();
        
}
