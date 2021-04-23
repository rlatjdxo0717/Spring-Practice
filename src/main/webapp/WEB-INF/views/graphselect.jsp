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
	<img src="resources/img/graph${vo2.id}.jpg">
	<table border="3" width=880 height="500" >
		<tr>
			<td bgcolor="F08080">이름</td>
			<td bgcolor="ADD8E6">${vo2.subject}</td>
			<td bgcolor="F08080">칩셋 제조사</td>
			<td bgcolor="ADD8E6">${vo2.company}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">출시년월</td>
			<td bgcolor="ADD8E6">${vo2.indate}</td>
			<td bgcolor="F08080">제품 시리즈</td>
			<td bgcolor="ADD8E6">${vo2.series}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">GPU 제조 공정</td>
			<td bgcolor="ADD8E6">${vo2.chipline}</td>
			<td bgcolor="F08080">NVIDIA 칩셋</td>
			<td bgcolor="ADD8E6">${vo2.chipset}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">베이스클럭</td>
			<td bgcolor="ADD8E6">${vo2.base}</td>
			<td bgcolor="F08080">부스트클럭</td>
			<td bgcolor="ADD8E6">${vo2.boost}</td>
		</tr>
		<tr>
			<td bgcolor="F08080">쿠다 프로세서</td>
			<td bgcolor="ADD8E6">${vo2.cuda}</td>
			<td bgcolor="F08080">인터페이스</td>
			<td bgcolor="ADD8E6">${vo2.itf}</td>
		</tr>

	</table>
</body>
</html>