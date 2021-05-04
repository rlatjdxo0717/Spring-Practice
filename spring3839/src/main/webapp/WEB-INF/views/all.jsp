<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시판 검색 정보</h3>
<hr>
<!-- java의 핵심적인 문법은 tag로 편하게 쓰자 -->
<!-- jstl: java standard tag library -->
<!--  for (BbsVO vo : list) {
			
		}
-->
<c:forEach var="vo" items="${list}">
게시물 번호 ${vo.id}<br>
게시물 제목 ${vo.title}<br>
게시물 내용 ${vo.content}<br>
게시물 작성자 ${vo.writer}<br>
<hr>
</c:forEach>
</body>
</html>