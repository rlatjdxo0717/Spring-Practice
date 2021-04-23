<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:forEach var="vo3"  items="${bc_list}">
	댓글 작성자 : ${vo3.cid}<br>
	댓글 내용 : <p><textarea readonly> ${vo3.ccontent} </textarea></p>
	댓글 작성시기 : ${vo3.cdate2}<br>
	<hr>
	</c:forEach>
