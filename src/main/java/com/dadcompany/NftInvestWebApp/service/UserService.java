package com.dadcompany.NftInvestWebApp.service;


import com.dadcompany.NftInvestWebApp.model.SendMessageService;
import com.dadcompany.NftInvestWebApp.model.User;
import com.dadcompany.NftInvestWebApp.repository.UserRepository;
import java.util.List;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@NoArgsConstructor
public class UserService {
    
    private UserRepository userDao;
    
    @Autowired
    public void setUserDao(UserRepository userDao) {
        this.userDao = userDao;
    }

    
    @Transactional
    public void addNewUser(User user){
        userDao.saveAndFlush(user);
    }
    @Transactional
    public void changeUserStatus(User user){
        if(user.getStatus().equalsIgnoreCase("user")){
            user.setStatus("admin");
        }else{
            user.setStatus("user");
        }
        userDao.saveAndFlush(user);
    }
    
    
    @Transactional(readOnly = true) 
    public List<User> findAllUsers(){
        return userDao.findAll();
    }
    
    
    
    
//    @Transactional(readOnly = true) 
//    public User findByIdOrNameOrLastNameOrEmailOrStatusLikeIgnoreCaseLong (Long id, String firstName, String lastname, String email, String status, Pageable pageable){
//        return userDao.findByIdOrNameOrLastNameOrEmailOrStatusLikeIgnoreCase (id, firstName, lastname,  email,  status,  pageable);
//    }
}
