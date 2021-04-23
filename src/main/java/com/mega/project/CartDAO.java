package com.mega.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class CartDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<CartVO> all() {
		return my.selectList("cart.all");
	}
	
	public List<CartVO> all2() {
		return my.selectList("cart.all2");
	}

	public void create(CartVO bag) throws Exception {
		my.insert("cart.insert", bag);
	}
	
	public void delete(CartVO bag) throws Exception {
		my.delete("cart.delete", bag);
	}
	
}
