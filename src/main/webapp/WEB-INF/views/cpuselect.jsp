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
	<img src="resources/img/cpu${vo2.id}.jpg">
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
			<td bgcolor="F08080">CPU종류</td>
			<td bgcolor="ADD8E6">${vo2.sort}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">소켓구분</td>
			<td bgcolor="ADD8E6">${vo2.socket}</td>
			<td bgcolor="F08080">세대</td>
			<td bgcolor="ADD8E6">${vo2.generation}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">출시일</td>
			<td bgcolor="ADD8E6">${vo2.birth}</td>
			<td bgcolor="F08080">제조공정</td>
			<td bgcolor="ADD8E6">${vo2.chipline}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">PCIe 버전</td>
			<td bgcolor="ADD8E6">${vo2.pcie}</td>
			<td bgcolor="F08080">최대 PCIe 레인수</td>
			<td bgcolor="ADD8E6">${vo2.maxpcie}</td>
		</tr>

	</table>
</body>
</html>