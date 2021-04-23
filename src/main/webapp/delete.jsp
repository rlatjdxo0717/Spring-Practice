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

<title>다가져pc 회원탈퇴</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
</head>
<body bgcolor = "gold">
<div class="center">
<h3>회원가입</h3>
<hr color="red">
<form action="delete">
   아이디: <input type="text" name="user_id"><br>
   중복확인 없이 탈퇴가 진행됩니다.
   <input type="submit" value="회원탈퇴 처리">
</form>
</div>
</body>
</html>