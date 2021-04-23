<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
</head>
<body>
<h3> 구매후기글 작성 </h3>
<hr color="red">

<form action="b_write">
	
	<input type="hidden" name="bid" value="${user_id}">
   제목: <input type="text" name="btitle"><br>
   <h2>내용</h2> 
		<textarea name = "bcontent" cols = "50" rows = "5"></textarea>
   <br>
   <button type="submit">작성완료</button>
   
</form>
</body>
</html>