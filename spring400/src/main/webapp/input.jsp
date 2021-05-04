<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body bgcolor="gold">
<h3>장바구니</h3>
<form action="cart">
	내 아이디 : <input type="text" name="mId"><br>
	상품 아이디 : <input type="text" name="pId"><br>
	상품 가격 : <input type="text" name="price"><br>
	상품 수량 : <input type="text" name="pCount"><br>
	<input type="submit" value="장바구니로 저장">
</form>
</body>
</html>