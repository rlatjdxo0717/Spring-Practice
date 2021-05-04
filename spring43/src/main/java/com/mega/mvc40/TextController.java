package com.mega.mvc40;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TextController {
	
	@Autowired
	TextService text;
	
	@RequestMapping("text")
	public void text(String tel, Model model) {
		System.out.println("컨트롤러까지 요청됨. 도착한 데이터는 " + tel);
		int num2 = text.text(tel);
		model.addAttribute("num2", num2);
	}
}
