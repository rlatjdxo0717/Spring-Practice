package com.mega.project;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CartController {
	
	@Autowired
	CartDAO dao;
	
	@Autowired
	MiniDAO dao2;
	
	@RequestMapping("all")
	public void all(Model model, HttpSession session) {
		session.getAttribute("user_Id");
		List<CartVO> list = dao.all();
		List<MiniVO> list2 = dao2.all();
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
	}
	
	@RequestMapping("all2")
	public void all2(Model model) {
		List<CartVO> list = dao.all2();
		model.addAttribute("list", list);
	}

	@RequestMapping("add")
	public void add(CartVO bag) throws Exception{
		dao.create(bag);
	}
	
	@RequestMapping("add2")
	public void add2(CartVO bag) throws Exception{
		dao.create(bag);
	}
	
	/*
	 * @RequestMapping("delete") public void delete(CartVO bag) throws Exception{
	 * dao.delete(bag); }
	 */
	
	
}
