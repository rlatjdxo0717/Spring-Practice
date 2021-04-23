package com.mega.project;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DanawaController {
	
	@Autowired 
	CPUDAO dao; //각각의 싱글톤 객체를 각각 맵핑하기 위해 DAO를 사용. 이때 일대일 대응이므로 여러번 어노테이션을 사용해준다.
	
	@Autowired
	GraphicDAO dao2;
	
	@Autowired
	MainBoardDAO dao3;
	
	@Autowired
	MemoryDAO dao4;
	
	@Autowired
	LoginDAO login;
	
	@RequestMapping("danawa_main") //브라우저 혹은 views 단에서 맵핑
	public void login(Model model, HttpSession session) {
		session.getAttribute("user_Id"); //로그인하고나서 세션이 계속 유지되도록 ID를 기억.
		List<CPUVO> list = dao.all1(); //첫 화면에 보일 물품 5개를 DB에서 가져옴.
		model.addAttribute("list_CPU", list); //가져온 정보들을 브라우저에 구현되도록 묶인 데이터들을 웹 서버로로 보내준다.
	}
	
	@RequestMapping("cpu_button") //CPU 정보들만 보여주는 화면 맵핑
	public void cpu_button(Model model) {
		List<CPUVO> list = dao.all1(); //초기화면과 동일.
		model.addAttribute("list_CPU", list);
	}
	
	@RequestMapping("mainboard_button") //메인보드 정보들만 보여주는 화면 맵핑
	public void mainboard_button(Model model) {
		List<MainBoardVO> list = dao3.all1(); //첫 화면에 보일 물품 5개를 DB에서 가져옴.
		model.addAttribute("list_MainBoard", list); //가져온 정보들을 브라우저에 구현되도록 묶인 데이터들을 웹 서버로로 보내준다.
	}
	
	@RequestMapping("memory_button") //메모리 정보들만 보여주는 화면 맵핑
	public void memory_button(Model model) {
		List<MemoryVO> list = dao4.all1(); //첫 화면에 보일 물품 5개를 DB에서 가져옴.
		model.addAttribute("list_Memory", list); //가져온 정보들을 브라우저에 구현되도록 묶인 데이터들을 웹 서버로로 보내준다.
	}
	
	@RequestMapping("graphic_button") //그래픽카드 정보들만 보여주는 화면 맵핑
	public void graphic_button(Model model) {
		List<GraphicVO> list = dao2.all1(); //첫 화면에 보일 물품 5개를 DB에서 가져옴.
		model.addAttribute("list_Graphic", list); //가져온 정보들을 브라우저에 구현되도록 묶인 데이터들을 웹 서버로로 보내준다.
	}
		
	@RequestMapping("find") //검색란에 직접 검색했을 경우 검색 단어가 포함된 물품들을 보여주는 화면 맵핑
	public void find(String subject, Model model, HttpSession session) {
		session.setAttribute("subject", subject); //입력된 검색값을 세션 유지시켜, 페이징 할때에도 해당 검색값이 유지되도록 함.
		
		//해당 검색값을 DAO에 저장시킨 검색 메서드를 이용하여 검색하고 나온 결과들을 vo로 처리하여 list들을 읽어들인다.
		List<CPUVO> list = dao.find(subject);
		//가져온 정보들을 브라우저에 구현되도록 묶인 데이터들을 웹 서버로로 보내준다.
		model.addAttribute("list_CPU", list);
		List<GraphicVO> list2 = dao2.find(subject);
		model.addAttribute("list_Graphic", list2);
		List<MemoryVO> list3 = dao4.find(subject);
		model.addAttribute("list_Memory", list3);
		List<MainBoardVO> list4 = dao3.find(subject);
		model.addAttribute("list_MainBoard", list4);
	}
	
	@RequestMapping("find2") //검색란에 직접 검색한 이후, 검색 단어가 포함된 물품들을 다음 페이지로 넘어갔을 경우에도 보여주는 화면 맵핑
	public void find(CPUVO bag, Model model, HttpSession session) {
		//저장시킨 검색값을 가져와서 다음 페이지에서도 해당 검색값을 가진 정보들을 불러올 수 있도록 함.
		String subject = (String) session.getAttribute("subject");
		//페이징했을 때 페이지 번호를 id= 으로 입력받기 때문에 번호가 일치 했을 때, 일정 구간의 데이터를 불러오는 방식으로 사용.
		//이 때 어느 물품이나 vo의 id를 사용이 가능함.
		CPUVO vo = dao.read(bag);
		//페이지번호 1을 눌렀을 때, vo에 들어있는 ID컬럼과 비교, 두 문자열이 일치하면 해당 번호에 해당하는 구간의 데이터들을 불러들인다.
		if (vo.getId().equals("1")) { //1~5번 데이터
			List<CPUVO> list_c1 = dao.find2(subject);
			model.addAttribute("list_CPU", list_c1);
			List<GraphicVO> list_g1 = dao2.find2(subject);
			model.addAttribute("list_Graphic", list_g1);
			List<MemoryVO> list_m1 = dao4.find2(subject);
			model.addAttribute("list_Memory", list_m1);
			List<MainBoardVO> list_b1 = dao3.find2(subject);
			model.addAttribute("list_MainBoard", list_b1);
		}
		else if (vo.getId().equals("2")) { //6~10번 데이터
			List<CPUVO> list_c2 = dao.find3(subject);
			model.addAttribute("list_CPU", list_c2);
			List<GraphicVO> list_g2 = dao2.find3(subject);
			model.addAttribute("list_Graphic", list_g2);
			List<MemoryVO> list_m2 = dao4.find3(subject);
			model.addAttribute("list_Memory", list_m2);
			List<MainBoardVO> list_b2 = dao3.find3(subject);
			model.addAttribute("list_MainBoard", list_b2);
		}
		else if (vo.getId().equals("3")) { //11~15번 데이터
			List<CPUVO> list_c3 = dao.find4(subject);
			model.addAttribute("list_CPU", list_c3);
			List<GraphicVO> list_g3 = dao2.find4(subject);
			model.addAttribute("list_Graphic", list_g3);
			List<MemoryVO> list_m3 = dao4.find4(subject);
			model.addAttribute("list_Memory", list_m3);
			List<MainBoardVO> list_b3 = dao3.find4(subject);
			model.addAttribute("list_MainBoard", list_b3);
		}
		else if (vo.getId().equals("4")) { //16~20번 데이터
			List<CPUVO> list_c4 = dao.find5(subject);
			model.addAttribute("list_CPU", list_c4);
			List<GraphicVO> list_g4 = dao2.find5(subject);
			model.addAttribute("list_Graphic", list_g4);
			List<MemoryVO> list_m4 = dao4.find5(subject);
			model.addAttribute("list_Memory", list_m4);
			List<MainBoardVO> list_b4 = dao3.find5(subject);
			model.addAttribute("list_MainBoard", list_b4);
		}	
	}
	
	@RequestMapping("cpu")
	public void one(CPUVO bag, Model model) { //CPU 데이터에 대한 페이징
		//위에 서술한 것과 마찬가지로 페이지의 값을 받고, 이를 부품DB에 저장된 ID칼럼값과 비교, 일치했을 때 해당 구간의 데이터를 읽어들인다.
		CPUVO vo = dao.read(bag);
		//페이징 값과 ID칼럼값이 일치하면, 해당 구간의 정보들을 DB에서 불러와서 웹서버로 보내준다.
		if (vo.getId().equals("1")) { //1~5번 데이터
			List<CPUVO> list = dao.all1();
			model.addAttribute("list_CPU", list); //웹 서버에서 받은 값들을 브라우저에 보내준다.
		}
		else if (vo.getId().equals("2")) { //6~10번 데이터
			List<CPUVO> list = dao.all2();
			model.addAttribute("list_CPU", list);
		}
		else if (vo.getId().equals("3")) { //11~15번 데이터
			List<CPUVO> list = dao.all3();
			model.addAttribute("list_CPU", list);
		}
		else if (vo.getId().equals("4")) { //16~20번 데이터
			List<CPUVO> list = dao.all4();
			model.addAttribute("list_CPU", list);
		}
	}
	
	@RequestMapping("mainboard")
	public void two(MainBoardVO bag, Model model) {
		MainBoardVO vo = dao3.read(bag);
		if (vo.getId().equals("1")) { //1~5번 데이터
			List<MainBoardVO> list = dao3.all1();
			model.addAttribute("list_MainBoard", list);
		}
		else if (vo.getId().equals("2")) { //6~10번 데이터
			List<MainBoardVO> list = dao3.all2();
			model.addAttribute("list_MainBoard", list);
		}
		else if (vo.getId().equals("3")) { //11~15번 데이터
			List<MainBoardVO> list = dao3.all3();
			model.addAttribute("list_MainBoard", list);
		}
		else if (vo.getId().equals("4")) { //16~20번 데이터
			List<MainBoardVO> list = dao3.all4();
			model.addAttribute("list_MainBoard", list);
		}
	}
	
	@RequestMapping("memory")
	public void three(MemoryVO bag, Model model) {
		MemoryVO vo = dao4.read(bag);
		if (vo.getId().equals("1")) { //1~5번 데이터
			List<MemoryVO> list = dao4.all1();
			model.addAttribute("list_Memory", list);
		}
		else if (vo.getId().equals("2")) { //6~10번 데이터
			List<MemoryVO> list = dao4.all2();
			model.addAttribute("list_Memory", list);
		}
		else if (vo.getId().equals("3")) { //11~15번 데이터
			List<MemoryVO> list = dao4.all3();
			model.addAttribute("list_Memory", list);
		}
		else if (vo.getId().equals("4")) { //16~20번 데이터
			List<MemoryVO> list = dao4.all4();
			model.addAttribute("list_Memory", list);
		}
	}
	
	@RequestMapping("graphic")
	public void four(GraphicVO bag, Model model) {
		GraphicVO vo = dao2.read(bag);
		if (vo.getId().equals("1")) { //1~5번 데이터
			List<GraphicVO> list = dao2.all1();
			model.addAttribute("list_Graphic", list);
		}
		else if (vo.getId().equals("2")) { //6~10번 데이터
			List<GraphicVO> list = dao2.all2();
			model.addAttribute("list_Graphic", list);
		}
		else if (vo.getId().equals("3")) { //11~15번 데이터
			List<GraphicVO> list = dao2.all3();
			model.addAttribute("list_Graphic", list);
		}
		else if (vo.getId().equals("4")) { //16~20번 데이터
			List<GraphicVO> list = dao2.all4();
			model.addAttribute("list_Graphic", list);
		}
	}
	
	@RequestMapping("random") //PC추천을 받았을때, 일정 조건을 충족하는 데이터 중에서 부품별로 랜덤하게 1개를 뽑아내어 화면에 구현한다.
	public void random(CPUVO bag, GraphicVO bag2, MainBoardVO bag3, 
			MemoryVO bag4, Model model) {
		CPUVO vo = dao.random(bag); //DAO에서 일정 조건을 준 SQL문을 통해 읽어들인 행 정보 한개를 읽어들인다.
		model.addAttribute("vo", vo); //이 정보 한개를 웹 서버로 넘겨준다.
		GraphicVO vo2 = dao2.random(bag2);
		model.addAttribute("vo2", vo2);
		MainBoardVO vo3 = dao3.random(bag3);
		model.addAttribute("vo3", vo3);
		MemoryVO vo4 = dao4.random(bag4);
		model.addAttribute("vo4", vo4);
		int sum = Integer.parseInt(vo.getFee())+ //화면에 4개 부품 합계 금액을 표시하기 위한 변수 선언.
				Integer.parseInt(vo2.getFee())+  //가격의 정보가 담긴 컬럼은 문자열이기 때문에 이를 정수로 변환시킨다.
				Integer.parseInt(vo3.getFee())+
				Integer.parseInt(vo4.getFee());
		DecimalFormat won = new DecimalFormat("###,###"); //정수로 변환시켜 합한 값들을 데시멀 포맷을 이용, 통화 형식으로 표시한다.
		model.addAttribute("sum", won.format(sum)); //포맷을 씌운 값을 웹 서버로 전송하여 브라우저에 구현되도록 한다.
	}

}
