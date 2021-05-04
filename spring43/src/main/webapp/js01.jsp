<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
function go(x) {
	location.href = 'http://www.' + x + '.com'
}
function find(y) {
	location.href = 'https://search.naver.com/search.naver?where=image&sm=tab_jum&query=' + y
}
function know(z) {
	location.href = 'https://kin.naver.com/search/list.nhn?query=' + z
}
function arr() {
	name = ['홍길동','김길동','송길동','정길동']
	for (var i = 0; i < name.length; i++) {
		console.log(name[i])
	}	
}
function data2() {
	data = document.getElementById('data').value
	console.log(data.length)
}
function data3() {
	pw1 = document.getElementById('pw1').value
	pw2 = document.getElementById('pw2').value
	result = document.getElementById('result')
	console.log(pw1 == pw2)
	pw3 = (pw1 == pw2)
	result.innerHTML = pw3 
}
function img() {
	//document.relaod()
	img = document.getElementById('img').value
	result = document.getElementById('result')
	result.innerHTML = '<img src=resources/img/' + img + '.jpg>'
}
</script>
</head>
<body>
<button onclick="add(100, 200)">더하기 기능 처리</button><hr>
<input type="text" id="img" value="ma">
<button onclick="img()">이미지 추가 처리</button>
<button onclick="minus(300)">빼기 기능 처리</button>
<button onclick="alert('나는 window객체꺼')">윈도우 객체 함수 호출</button>
<button onclick="go('naver')">네이버로 이동</button>
<button onclick="find('자동차')">네이버에서 자동차 검색</button>
<button onclick="know('앤트로피')">네이버지식인엣 엔트로피 검색</button>
<button onclick="arr()">배열에 넣고, 프린트</button><hr>
<input type="text" id="data" value="root">
<button onclick="data2()">id를 입력해서 유효성 검증</button><br>
<input type="text" id="pw1" value="1234">
<input type="text" id="pw2" value="5678">
<button onclick="data3()">pw가 동일한지 검증</button><br><br>
<div id="result" style="background:yellow; width:500px; height:200px; font-size: 100px;" >
</div>
</body>
</html>