package com.mega.mvc3839;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MiniController2 {
	
	@Autowired
	MiniDAO2 dao;
	
	@RequestMapping("mini2.mega")
	public void create(MiniVO2 bag, MiniDAO2 dao) throws Exception {
		dao.create(bag);
	}
}
