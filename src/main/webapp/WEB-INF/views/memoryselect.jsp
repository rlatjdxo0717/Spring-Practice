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
	<img src="resources/img/memory${vo2.id}.jpg">
	<table border="3" width=880 height="500" >
		<tr>
			<td bgcolor="F08080">이름</td>
			<td bgcolor="ADD8E6">${vo2.subject}</td>
			<td bgcolor="F08080">제조회사</td>
			<td bgcolor="ADD8E6">${vo2.company}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">출시년월</td>
			<td bgcolor="ADD8E6">${vo2.indate}</td>
			<td bgcolor="F08080">사용 장치</td>
			<td bgcolor="ADD8E6">${vo2.use}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">제품 분류</td>
			<td bgcolor="ADD8E6">${vo2.classify}</td>
			<td bgcolor="F08080">메모리 규격</td>
			<td bgcolor="ADD8E6">${vo2.standard}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">메모리 용량</td>
			<td bgcolor="ADD8E6">${vo2.capacity}</td>
			<td bgcolor="F08080">램 개수</td>
			<td bgcolor="ADD8E6">${vo2.pack}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">동작클럭(대역폭)</td>
			<td bgcolor="ADD8E6">${vo2.clock}</td>
			<td bgcolor="F08080">램타이밍</td>
			<td bgcolor="ADD8E6">${vo2.ramtime}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">동작전압</td>
			<td bgcolor="ADD8E6">${vo2.voltage}</td>
			<td bgcolor="F08080">히트싱크</td>
			<td bgcolor="ADD8E6">${vo2.heatsink}</td>
		</tr>

	</table>
</body>
</html>