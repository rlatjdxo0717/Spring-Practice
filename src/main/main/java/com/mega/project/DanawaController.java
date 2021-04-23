package com.mega.project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DanawaController {
	
	@Autowired //싱글톤으로 만든 주소를 넣어주세요.(주입, injection),DB 갯수가 늘어나면 Autowired도 늘어나야한다!! 
	CPUDAO dao; //싱글톤으로 만들어진 !!객체의 주소!!를 넣어주세요.
	
	@Autowired
	GraphicDAO dao2;
	
	@Autowired
	MainBoardDAO dao3;
	
	@Autowired
	MemoryDAO dao4;
	
	@Autowired
	MemberDAO dao5;
	
	@RequestMapping("danawa_main")
	public void all(Model model) {
		List<CPUVO> list = dao.all();
		model.addAttribute("list_CPU", list);
		//List<GraphicVO> list2 = dao2.all();
		//model.addAttribute("list_Graphic", list2);
		//List<MainBoardVO> list3 = dao3.all();
		//model.addAttribute("list_MainBoard", list3);
		//List<MemoryVO> list4 = dao4.all();
		//model.addAttribute("list_Memory", list4);
	}
	
	//@RequestMapping("loginSession")
	//public String login(MemberVO bag, HttpSession session) {
	//	MemberVO vo = dao5.login(bag);
	//	if(vo != null) {
	//		System.out.println("id/pw 일치.");
	//		session.setAttribute("userId", vo.getId());
	//		return "redirect:login.jsp";
	//		return "ok";
	//	}else {
	//		System.out.println("id/pw 불일치.");
	//		return "no";
	//	}
	//}
	
	@RequestMapping("one")
	public void one(Model model) {
		
			List<CPUVO> list = dao.all1();
			model.addAttribute("list_CPU", list);
		
	}
}
