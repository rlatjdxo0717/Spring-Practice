<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function plus() {
	num1 = parseInt(document.getElementById("num1").value)
	num2 = parseInt(document.getElementById("num2").value)
	result = document.getElementById('result')
	result.innerHTML = num1 + num2
}
function img() {
	img = document.getElementById('img').value
	result = document.getElementById('result')
	result.innerHTML = "<img src = 'resources/img/" + img + ".png'>"
}
</script>
</head>
<body>
숫자 1 : <input type="text" id='num1'> <br>
숫자 2 : <input type="text" id='num2'> <br>
<button onclick="plus()">더한 결과출력 버튼</button><br>
이미지 이름 : <input type="text" id='img'><br>
<button onclick="img()">이미지 출력 버튼</button><br>
<div id="result" style="background: yellow; width:500px; height:200px; font-size : 100px;"></div>
</body>
</html>