package com.mega.mvc37;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //어노테이션, 표시
public class MemberController {
	
	@Autowired
	MemberDAO dao; //싱글톤으로 만들어진 객체의 주소를 넣어주세요.
	
	@RequestMapping("insert.mega")
	public void insert(MemberVO bag) throws Exception {
		System.out.println("(싱글톤)dao의 주소 >>" + dao);
		System.out.println("(프로토타입)vo의 주소 >>" + bag);
		dao.create(bag);
	}
	
	@RequestMapping("login.mega")
	public String login(String id, String pw, String pw2) {
		System.out.println("내가 호출됨...!!");
		System.out.println("컨트롤하는 메서드");
		System.out.println("컨트롤러에서 받은 id: " + id);
		System.out.println("컨트롤러에서 받은 pw: " + pw);
		System.out.println("컨트롤러에서 받은 pw2: " + pw2);
		
		boolean result = false; //로그인이 안되었을 때
    	if(id.equals("root") && pw.equals("1234")){
    		result = true;
    	}
    	if(result) {
    		return "ok"; //views아래에 있는 ok.jsp를 호출함.
    	}else {
    		return "no";
    	}
	}
}
