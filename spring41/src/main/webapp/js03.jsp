<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function web() {
		site = document.getElementById("site").value
		location.href = 'http://www.' + site
	}
	
	function pay() {
		com =document.getElementById("com").value
		money =parseInt(document.getElementById("money").value)
		choice =document.getElementById("choice").value
		if (choice == 1) {
			choice = "계좌이체"
		} else if (choice == 2) {
			money += 1000, choice = "신용카드"
		} else if (choice == 3) {
			money += 500, choice = "휴대폰결제"
		}
		result = document.getElementById("result")
		result.innerHTML = com + "에서" + money + "원" + choice + "로 구매함"
	}
</script>
</head>
<body>
	가고싶은 사이트 를 고르세요!! >
	<select id='site'>
		<option value="naver.com">네이버</option>
		<option value="daum.net">다음</option>
		<option value="google.com">구글</option>
		<option value="">기타</option>
	</select>
	<button onclick="web()">사이트 이동 버튼</button><Br>
	<br>
	구매 상점 입력 : <input type="text" id="com"><br>
	결제 금액 입력 : <input type="text" id="money"><br>
	결제 수단 입력 : <input type="text" id="choice"><br>
	<button onclick="pay()">결제 버튼</button><Br>
	<div id="result"></div>
</body>
</html>