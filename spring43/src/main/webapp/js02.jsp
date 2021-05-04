<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function plus() {
	//두 수를 id를 가지고 와야함.
	//int로 변환
	//두 수를 더해서 프린트
}
function img() {
	//이미지 이름을 입력한 것 가지고 와야함.
	//<img src='resources/img/car.jpg'>를 만들어주어야 함.
	//result태그를 가지고 와야 함.
	//result에 위에서 만든 img태그를 html로 끼워넣어주면 됨.
}
</script>
</head>
<body>
숫자1: <input id="n1"><br>
숫자2: <input id="n2"><br>
<button onclick="plus()">두수를 더하기</button>
<hr>
이미지 이름: <input id="img"><br>
<button onclick="img()">이미지를 나타내기</button>
<hr>
<div id="result">
</div>

</body>
</html>