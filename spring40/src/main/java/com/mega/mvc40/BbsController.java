package com.mega.mvc40;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@Autowired // 싱글톤으로 만든 주소 넣어주세요.!(주입, Injection)
	BbsDAO dao;

	@RequestMapping("all")
	public void all(Model model) {
		List<BbsVO> list = dao.all();
		System.out.println("====== 목록의 개수는" + list.size() + "개 ==========");
		model.addAttribute("list", list);
	}

	@RequestMapping("select")
	public void select(BbsVO bbsVO, Model model) {
		BbsVO vo = dao.read(bbsVO);
		// views까지 검색된 정보를 가지고 가야한다.
		// model으로 속성으로만 등록하면 됨.
		model.addAttribute("vo", vo);
	}

	@RequestMapping("insert10")
	public void insert(BbsVO bbsVO) throws Exception {
		// bbsVO를 model속성으로 자동 등록해줌.
		// model.addAttribute("bbsVO", bbsVO);
		dao.create(bbsVO);
	}
}
