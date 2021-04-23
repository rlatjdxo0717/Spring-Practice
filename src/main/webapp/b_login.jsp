<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
</head>
<body>
<% if(session.getAttribute("user_id") == null) {%> 
<form action="login">
아이디: <input type="text" name="id" value="root"><br>
패스워드: <input type="text" name="pw" value="1234"><br>
<input type="submit" value="로그인처리">
<%}else{ %>
${user_id}님 환영합니다.

<button type="button" onclick="location.href='b_main.jsp' ">게시판으로 이동</button>
<%} %>
</form>
</body>
</html>