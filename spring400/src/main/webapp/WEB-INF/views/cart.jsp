<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 내용 확인</title>
</head>
<body bgcolor="green">
장바구니 내용 확인
<hr color = "gold">
내아이디 : ${cartVO.mId}<br>
상품 아이디 : ${cartVO.pId}<br>
상품 가격 : ${cartVO.price}<br>
상품 수량 : ${cartVO.pCount}<br>
</body>
</html>