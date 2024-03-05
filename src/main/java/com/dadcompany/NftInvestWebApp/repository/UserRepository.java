
package com.dadcompany.NftInvestWebApp.repository;


import com.dadcompany.NftInvestWebApp.model.SendMessageService;
import com.dadcompany.NftInvestWebApp.model.User;
import java.awt.print.Pageable;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface UserRepository extends JpaRepository <User, Long> {


//    User findByIdOrfirstNameOrLastNameOrEmailOrStatusLikeIgnoreCase(Long id, String firstName, String lastname, String email, String status, Pageable pageable);
//    List <User> findUsersByEmail();
}
