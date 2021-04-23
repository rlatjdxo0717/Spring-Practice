package com.mega.project;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LikeController {

	@Autowired
	LikeDAO dao;

	@RequestMapping("b_like") // 주소배정
	public void like(LikeVO vo) throws Exception {
		System.out.println("일단 read페이지 에서 넘어왔다.");
		dao.like(vo);
		System.out.println("Like(좋아요)값 전달 성공");

	}
	
}
