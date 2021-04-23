<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String mini_nm = request.getParameter("mini_nm"); %>
<img src='resources/img/<%= mini_nm %>.jpg'>
</body>
</html>