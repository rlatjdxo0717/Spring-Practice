<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">
게시물 등록이 완료되었습니다.!!
<hr color="gold">
등록된 id: <!-- model.getAttribute("bbsVO").getID() :표현식  -->
           ${bbsVO.id} <!-- 표현언어(Expression Languages:EL), 속성프린트 --><br>
등록된 title: ${bbsVO.title}<br>           
등록된 content: ${bbsVO.content}<br>           
등록된 writer: ${bbsVO.writer}<br>
<hr color="gold">
<a href="bbs_insert.jsp">게시판 글쓰기</a>
<!-- 브라우저에서 요청할 수 있는 페이지만 들어갈 수 있음. webapp아래 파일만! -->
</body>
</html>