<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function web() {
	inTag1 = document.getElementById("site")
	alert(inTag1.value)
	if (inTag1.value == '네이버') {
		location.href = 'http://www.naver.com'
	}else if (inTag1.value == '구글') {
		location.href = 'http://www.google.com'
	}else if (inTag1.value == '다음') {
		location.href = 'http://www.daum.net'
	}else {
		alert("해당 사이트가없음")
	}
}
function pay() {
	com = document.getElementById("com").value
	money = document.getElementById("money").value
	choice = document.getElementById("choice").value
	money2 = parseInt(money)
	if (choice == '2') {
		money2 = money2 + 1000
	} else if (choice == '3') {
		money2 = money2 + 500
	} 
	result = document.getElementById("result")
	result.innerHTML = com + "에서" + money2 + "원을 결제수단" + choice + "번으로 결제했습니다."
}
</script>
</head>
<body>
가고싶은 사이트 : <input id = "site" value="네이버"><br>
<button onclick="web()">사이트 이동 버튼</button><br>
<hr color = "red">
구매 상점 : <input id = "com" value="KSTshop"><br>
결제 금액 : <input id = "money" value="10000"><br>
입력수단 (1)계좌이체, (2)신용카드, (3)휴대폰결제
<input id = "choice" value="1"><br>
<button onclick="pay()">결제버튼</button><br>
<hr color = "blue">
<div id="result"></div>
</body>
</html>