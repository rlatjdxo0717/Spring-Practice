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
<title>다나와 pc 회원가입</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
</head>
<body bgcolor = "gold">
<div class="center">
<h3>회원가입</h3>
<hr color="red">
<form action="insert">
   (필수입력항목)아이디:      <input type="text" name="user_id"><br>
   (필수입력항목)패스워드:     <input type="text" name="user_pw"><br>
   (필수입력항목) 이름 :      <input type="text" name="user_name"><br>
      생년월일(ex 19930824) : <input type="text" name="user_birth"><br>   
   (필수입력항목)  전화번호 :  <input type="text" name="user_tel"><br>   
        주  소 :               <input type="text" name="user_address"><br>   
   (필수입력항목) 이메일 :     <input type="text" name="user_email"><br>   
   <input type="submit" value="회원가입 처리">
</form>
</div>
</body>
</html>