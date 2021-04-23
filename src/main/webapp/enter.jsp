<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.center {
	text-align: center;
	font-size: 30px;
}

input {
	width: 300px;
	height: 50px;
	font-size: 30px;
	margin: 0 0 0 20px;
}

button {
	height: 50px;
	Width: 200px;
	font-size: 25px;
}
</style>
<title>다가져pc 로그인</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
</head>
<body bgcolor="gold">
	<div class="center">
		<h3>로그인</h3>
		<hr color="red">
		<%
			if (session.getAttribute("user_Id") == null) {
		%>
		<form action="enter">
			아이디: <input type="text" name="user_id"><br> 패스워드: <input
				type="text" name="user_pw"><br> <input type="submit"
				value="로그인처리">
			<%
				} else {
			%>
			${user_Id}님 환영합니다.<a href=select?user_id=${user_Id}>내정보보기</a>
			<%
				}
			%>
			<br>

		</form>
		<a href="insert.jsp"><button>회원 가입하기</button></a>
	</div>
</body>
</html>