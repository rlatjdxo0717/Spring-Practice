<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- c:코어문법(if, for, for each 등 -->
<!-- jstl: java standard tag library : 자바 문법을 태그로 쓸수 있는 문법 -->
<c:forEach var="x" items="${fruit}">
- ${x} <br>
</c:forEach>   