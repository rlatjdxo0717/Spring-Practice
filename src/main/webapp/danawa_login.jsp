<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:forward page="danawa_main"></jsp:forward>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="gold">
<!-- view 부분 -->
<h3>게시판 글검색</h3>
<hr color="green">
<a href="danawa_main">전체검색</a>
<form action="select">
	아이디 : <input type="text" name="id"><br>
	<input type="submit" value="게시판글검색">
</form>
</body>
</html>