<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>�Խ��� �˻� ����</h3>
<hr>
<!-- java�� �ٽ����� ������ tag�� ���ϰ� ���� -->
<!-- jstl : java standard tag library -->
<c:forEach var="vo" items="${list}">
�Խù� ��ȣ ${vo.id}<br>
�Խù� ���� ${vo.title}<br>
�Խù� ���� ${vo.content}<br>
�Խù� �ۼ��� ${vo.writer}<br>
<hr>
</c:forEach>
</body>
</html>