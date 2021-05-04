package com.mega.mvc37;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@Autowired //싱글톤으로 만든 주소 넣어주세요.!(주입, Injection)
	BbsDAO dao;
	
	@RequestMapping("insert10")
	public void insert(BbsVO bbsVO) throws Exception {
		dao.create(bbsVO);		
	}
}
