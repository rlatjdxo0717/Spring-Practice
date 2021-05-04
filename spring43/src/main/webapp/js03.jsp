<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
function plus() {
	n1 = parseInt(document.getElementById('s1').value)
	n2 = parseInt(document.getElementById('s2').value)
	sum = n1 + n2
	result1 = document.getElementById('result1')
	result1.innerHTML = sum
	//alert(sum)
}
function img() {
	name = document.getElementById('pic').value
	result2 = document.getElementById('result2')
	result2.innerHTML = '<img src = "resources/img/' + name + '.jpg">'
}
</script>
</head>
<body>
숫자 1 : <input type="text" id="s1"><br>
숫자 2 : <input type="text" id="s2"><br>
<button onclick="plus()">더하기 버튼</button><br>
<hr>
<input id="pic">
<button onclick="img()">이미지 찾는 버튼</button>
<div id="result1"></div>
<hr>
<div id="result2"></div>
<hr>
<div id="result3"></div>
<hr>
</body>
</html>