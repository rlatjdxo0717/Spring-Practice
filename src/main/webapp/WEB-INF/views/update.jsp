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

<title>다가져 pc 회원정보수정</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
</head>
<body bgcolor = "gold">
<div class="center">
회원정보가 각각 <br>
비밀번호: ${loginVO.user_pw}<br> 
성함: ${loginVO.user_name}<br> 
생년월일: ${loginVO.user_birth}<br> 
전화번호: ${loginVO.user_tel}<br> 
주소: ${loginVO.user_address}<br> 
이메일: ${loginVO.user_email} 
로 수정되었습니다.
<br>
<a href="danawa_main.jsp"><button>메인으로</button></a>
</div>
</body>
</html>