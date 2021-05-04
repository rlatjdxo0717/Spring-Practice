package com.mega.mvc3839;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CartDAO {
	
	@Autowired
	SqlSessionTemplate my;

	public void create(CartVO bag) throws Exception {
		
		my.insert("cart.insert", bag);
	}
}
