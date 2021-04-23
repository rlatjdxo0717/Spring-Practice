package com.mega.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MBController2 {

	@Autowired //싱글톤으로 만든 주소 넣어주세요.!(주입, Injection)
	MBDAO2 mbdao2;
		
	@RequestMapping("mbselect")
	private void select(MBVO2 mbvo2, Model model) {
		MBVO2 vo2 = mbdao2.read(mbvo2);
		model.addAttribute("vo2", vo2);
	}
	
}
