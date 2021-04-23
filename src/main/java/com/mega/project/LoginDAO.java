package com.mega.project;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LoginDAO {
   @Autowired
   SqlSessionTemplate my; 
   public void create(LoginVO bag) throws Exception {
      my.insert("login.insert", bag);
   }
   
   public void delete(LoginVO bag) throws Exception {
      my.delete("login.delete", bag);
   
   
   }
   public void update(LoginVO bag) throws Exception {
      my.update("login.update", bag);
   
   
   }
   

   public LoginVO enter(LoginVO bag) {
      return my.selectOne("login.enter", bag);
   }
   
   public LoginVO read(LoginVO bag) {
		LoginVO vo = my.selectOne("login.select", bag);
		return vo;
	}
}