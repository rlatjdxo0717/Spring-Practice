<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.center{
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
<title>다가져 pc 마이페이지</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
</head>
<body bgcolor = "gold">
<div class="center">
<h3>마이페이지</h3>
<hr color="red">
<form action="select">
   아이디를 한번 더 입력해 주세요.<br>
   아이디: <input type="text" name="user_id"><br>
	<input type="submit" value="마이페이지 이동">

</form>
</div>
</body>
</html>