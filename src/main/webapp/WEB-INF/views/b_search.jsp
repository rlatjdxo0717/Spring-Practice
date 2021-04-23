<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:forEach var="vo" items="${s_title}">
   <hr>
   게시물 번호 ${vo.bno}<br>
   게시물 작성자 ${vo.bid}<br>
   게시물 제목 <a href = "b_read?bno=${vo.bno}">${vo.btitle}</a><br>
   <!-- 게시글 제목에 컨트롤러 b_read 로 태그를 걸어줬음. -->
   게시물 작성일자 ${vo.bdate2}<br>
   게시물 추천수 ${vo.blike}<br>
   게시물 조회수 ${vo.bviews}<br>
   <hr>
   </c:forEach>