package com.mega.mvc39;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // 어노테이션, 표시
public class ProductController {

	@Autowired
	ProductDAO dao; // 싱글톤으로 만들어진 객체의 주소를 넣어주세요.

	@RequestMapping("select3")
	public void select3(ProductVO productVO, Model model) throws Exception {
		ProductVO vo = dao.read(productVO);
		// 검색결과를 담기위해 views까지 데이터를 넘김
		model.addAttribute("vo3", vo);
	}
}