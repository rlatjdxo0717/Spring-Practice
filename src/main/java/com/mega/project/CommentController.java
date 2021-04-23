package com.mega.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommentController {

	@Autowired
	CommentDAO dao;

	@RequestMapping("c_insert") // 주소배정
	public void insert(CommentVO vo,Model model) throws Exception {
		System.out.println("일단 컨트롤러 까지는 왔음.");
		dao.create(vo);
		System.out.println("Comment VO값 전달 성공");
		
		List<CommentVO> list = dao.all(vo);
		System.out.println("all.list DAO에서 리턴받아왔음");
		model.addAttribute("c_list", list);
	}
	
	@RequestMapping("c_read")
	public void read(CommentVO vo,Model model) {
		System.out.println("게시글 번호 > " + vo.getCbno());
		
		System.out.println("댓글 읽어오려고 일단 컨트롤러 까지 왔음");
		List<CommentVO> list = dao.all(vo);
		System.out.println("첫화면 댓글 읽어옴");
		model.addAttribute("bc_list", list);
	}
	
}
