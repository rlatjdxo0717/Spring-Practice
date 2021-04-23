package com.mega.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MiniController {
	
	@Autowired
	MiniDAO dao2;
	
	
	public void all(Model model) {
		List<MiniVO> list2 = dao2.all();
		model.addAttribute("list2", list2);
	}
	
	@RequestMapping("mini.mega")
	public void create(MiniVO bag) throws Exception {
		dao2.create(bag);
	}
}
