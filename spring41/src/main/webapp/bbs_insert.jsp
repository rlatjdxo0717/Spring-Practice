<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<script type="text/javascript" src="resources/js/out.js"></script> <!-- 이 링크를 써야지 add, minus 를 사용할수 있음. -->
<script type="text/javascript">
	alert('내가 시작')	
	sum2 = add(300, 200) /* 함수는 호출할 대, 사용될 때 실행됨!! */
	minus(sum2)
</script>
</head>
<body bgcolor="green">
<!-- view부분!! -->
<h3>게시판 글등록</h3>
<hr color="green">
<img src="resources/img/ma.png">
<form action="insert10">
	아이디: <input type="text" name="id" class="in"><br>
	제목: <input type="text" name="title" class="in"><br>
	내용: <input type="text" name="content" class="in"><br>
	글쓴이: <input type="text" name="writer" class="in"><br>
	<input id="b" type="submit" value="게시판 글등록">
</form>
</body>
</html>