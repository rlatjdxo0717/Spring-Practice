package com.mega.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GraphController2 {

	@Autowired //싱글톤으로 만든 주소 넣어주세요.!(주입, Injection)
	GraphDAO2 graphdao2;
		
	@RequestMapping("graphselect")
	public void select(GraphVO2 graphvo2, Model model) {
		//model은 views까지 정보를 넘길 때 사용
		//model의 속성으로 지정해야함.
		//model.addAttribute("이름", 값);
		//views의 cpuselect.jsp를 호출
		GraphVO2 vo2 = graphdao2.read(graphvo2);
		model.addAttribute("vo2", vo2);
	}
}
