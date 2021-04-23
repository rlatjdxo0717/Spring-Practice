package com.mega.project;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@Autowired
	LoginDAO dao;

	@RequestMapping("insert")
	public void insert(LoginVO loginVO) throws Exception {
		dao.create(loginVO);
	}

	@RequestMapping("delete")
	public void delete(LoginVO loginVO) throws Exception {
		dao.delete(loginVO);
	}

	@RequestMapping("update")
	public void update(LoginVO loginVO) throws Exception {
		dao.update(loginVO);
	}

	@RequestMapping("enter")
	public String login(LoginVO bag, HttpSession session) {
		LoginVO vo = dao.enter(bag);
		System.out.println("=============" + vo);
		if (vo != null) {
			System.out.println("해당 id/pw가 있음.");
			session.setAttribute("user_Id", vo.getUser_id());
			return "redirect:danawa_main";
//          return "ok";
		} else {
			System.out.println("해당 id/pw가 없음.");
			return "no";
		}
	}

	@RequestMapping("select")
	public void select(LoginVO loginVO, Model model) {
		LoginVO vo = dao.read(loginVO);
		// views까지 검색된 정보를 가지고 가야한다.
		// model으로 속성으로만 등록하면 됨.
		model.addAttribute("vo", vo);
	}

	@RequestMapping("logout")
	public String logout(LoginVO loginVO, HttpSession session) {
		session.getAttribute("user_Id");
		session.invalidate();
		return "redirect:enter.jsp";
	}
}
