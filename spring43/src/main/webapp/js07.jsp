<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//버튼 하나당 함수 하나로 정의!
function web() {
	//1.입력한 값을 가지고 와야함.(id가 site인 곳!)
	//Element(엘리먼트, 요소)=> html문서의 주요 요소 tag!
	inTag1 = document.getElementById("site") //input tag
	alert(inTag1.value)
	if (inTag1.value == '네이버') {
		location.href = 'http://www.naver.com'
	}else if (inTag1.value == '구글') {
		location.href = 'http://www.google.com'
	}else if (inTag1.value == '다음') {
		location.href = 'http://www.daum.net'
	}else {
		alert("'해당 사이트가 없음.'")
	}
}
function pay() {
	com = document.getElementById("com").value
	money = document.getElementById("money").value
	choice = document.getElementById("choice").value
	money2 = parseInt(money)
	if (choice == '2') {
		money2 = money2 + 1000
	}else if (choice == '3') {
		money2 = money2 + 500
	}
	resultTag = document.getElementById("result")
	resultTag.innerHTML = com + '에서 ' + money2 + '원을 결제수단 ' + choice +'번으로 결제했습니다.'
}

</script>
</head>
<body>
가고싶은 사이트: <input id="site" value="네이버">
<button onclick="web()">사이트 이동 버튼</button>
<hr color="red">
구매상점: <input id="com" value="더조은샵"><br>
결제금액: <input id="money" value="10000"><br>
입력수단(1)계좌이체, 2)신용카드, 3)휴대폰결제)
<input id="choice" value="1"><br>
<button onclick="pay()">결제 버튼</button>
<hr color="blue">
<div id="result"></div>
</body>
</html>