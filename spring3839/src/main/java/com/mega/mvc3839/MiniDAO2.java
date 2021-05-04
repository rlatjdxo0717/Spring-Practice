package com.mega.mvc3839;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MiniDAO2 {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void create(MiniVO2 bag) throws Exception {
		System.out.println("=============" + my);
		my.insert("mini.insert", bag);
	}

}
