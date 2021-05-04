<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		/* 자바스크립트라는 언어는 변수에 값이 들어갈때 
		       변수에 들어갈 데이터 타입이 결정된다.
		   => 오토타입핑(auto-typing)
		   <-> String[] day; //자바는 선언할때!
		*/
		day = ["월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"]
		alert(day)
		for (var i = 0; i < day.length; i++) {
			alert(day[i])
			if (day[i] == "목요일") {
				alert(" 와 내일 금요일이다!!")
			}
		}
		</script>
</head>
<body>

</body>
</html>