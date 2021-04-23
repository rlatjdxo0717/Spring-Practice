
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상세 페이지</h1>
	<img src="resources/img/mb${vo2.id}.jpg">
	<table border="3" width=880 height="500">
		<tr>
			<td bgcolor="F08080">이름</td>
			<td bgcolor="ADD8E6">${vo2.subject}</td>
			<td bgcolor="F08080">제조회사</td>
			<td bgcolor="ADD8E6">${vo2.company}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">출시년월</td>
			<td bgcolor="ADD8E6">${vo2.indate}</td>
			<td bgcolor="F08080">CPU 소켓</td>
			<td bgcolor="ADD8E6">${vo2.socket}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">칩셋 라인업</td>
			<td bgcolor="ADD8E6">${vo2.lineup}</td>
			<td bgcolor="F08080">세부칩셋</td>
			<td bgcolor="ADD8E6">${vo2.chipset}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">폼팩터</td>
			<td bgcolor="ADD8E6">${vo2.factor}</td>
			<td bgcolor="F08080">전원부</td>
			<td bgcolor="ADD8E6">${vo2.power}</td>
		</tr>

	</table>
</body>
</html>