package com.mega.project;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BBSController {
	
	@Autowired
	BBSDAO dao; //싱글톤으로 만들어진 !!객체의 주소!!를 넣어주세요.
	
	@Autowired
	BBSDAO dao2; //싱글톤으로 만들어진 !!객체의 주소!!를 넣어주세요.
	
	//@RequestMapping("all2")
	//public void all(Model model) {
	//	List<MemberVO> list = dao2.all();
	//	model.addAttribute("Thislist", list);
	//}
	

	@RequestMapping("all3")
	@ResponseBody
	public List<BBSVO> all2() {
		List<BBSVO> all3 = dao.all2();
		return all3;
	}
	
//	@RequestMapping("all2")
//	@ResponseBody
//	public String all2(String food) {
//		if (food.equals("아이스크림")) {
//			return "go to grocery store!";
//		}else {
//			return "go home!";
//		}
//	}
	
	
	/*
	 * @RequestMapping("login.mega") public String login(String id, String pw,
	 * String pw2) { System.out.println("내가 호출됨..!!");
	 * System.out.println("컨트롤하는 메서드"); System.out.println("컨트롤러에서 받은 id: " + id);
	 * System.out.println("컨트롤러에서 받은 pw: " + pw);
	 * System.out.println("컨트롤러에서 받은 pw: " + pw2);
	 * 
	 * boolean result = false; //로그인 처리가 안됐을때 if (id.equals("root") &&
	 * pw.equals("1234")) { result = true; } if (result) { return "ok"; //views 아래에
	 * 있는 ok.jsp를 알아서 찾는다! }else { return "no"; } }
	 */
	
	/*
	 * @RequestMapping("delete.mega") // 이후 view로 넘어갈때 앞에 insert부분만 살리고 뒤는 버린다는 말을
	 * 깨닳음. public void delete(MemberVO bag, MemberDAO dao) throws Exception {
	 * //public void login(String id, String pw, String name, String tel) {
	 * dao.delete(bag); System.out.println("컨트롤러에서 받은 id: " + bag.getId());
	 * 
	 * boolean result = false; if (bag.getId().equals("root") &&
	 * bag.getPw().equals("1234")) { result = true; } }
	 */
}
