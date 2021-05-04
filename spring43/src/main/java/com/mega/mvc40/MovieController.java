package com.mega.mvc40;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

	@RequestMapping("movie")
	public void movie(MovieVO vo, Model model) {
		System.out.println("컨트롤러에서 확인 " + vo);
		model.addAttribute("vo", vo);
	}

}
