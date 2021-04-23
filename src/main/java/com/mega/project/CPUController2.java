package com.mega.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CPUController2 {

	@Autowired //싱글톤으로 만든 주소 넣어주세요.!(주입, Injection)
	CPUDAO2 cpudao2;
	
	@RequestMapping("cpuselect")
	public void select(CPUVO2 cpuvo2, Model model) {
		System.out.println(cpuvo2.getId());
		//model은 views까지 정보를 넘길 때 사용
		//model의 속성으로 지정해야함.
		//model.addAttribute("이름", 값);
		//views의 cpuselect.jsp를 호출
		CPUVO2 vo2 = cpudao2.read(cpuvo2);
		model.addAttribute("vo2", vo2);
	}
}
