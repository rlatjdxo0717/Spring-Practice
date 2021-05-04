<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
	String money = request.getParameter("money");
	String choice = request.getParameter("choice");
	double money2 = Double.parseDouble(money);
	if(choice.equals("1")){
		money2 = money2 * 0.8;
	}else if(choice.equals("2")){
		money2 = money2 * 0.9;
	}
	//choice가 1번이면 80%만 결제
	//	       2번이면 90%만 결제
	//         3번이면 전부다 결제
	//         결제금액을 알려주세요.!!
%><%= (int)money2 %>