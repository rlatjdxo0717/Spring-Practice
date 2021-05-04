<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(session.getAttribute("userId") == null) {%> 
<form action="login">
아이디: <input type="text" name="id" value="root"><br>
패스워드: <input type="text" name="pw" value="1234"><br>
<input type="submit" value="로그인처리">
<%}else{ %>
${userId}님 환영합니다.
<%} %>
</form>
</body>
</html>