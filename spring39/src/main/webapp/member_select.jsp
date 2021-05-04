<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
<!-- view부분!! -->
<h3>개인 정보 검색</h3>
<hr color="green">
<form action="select2">
   아이디: <input type="text" name="id"><br>
   <input type="submit" value="개인 정보 검색">
</form>
<a href="select2?id=root">root회원 검색</a><br>
<a href="select2?id=hera">hera회원 검색</a><br>
<a href="select2?id=apple">apple회원 검색</a><br>
</body>
</html>