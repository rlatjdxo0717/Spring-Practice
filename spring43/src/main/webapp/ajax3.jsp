<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		//1. b1을 클릭했을때, 
		//2. tel에 입력한 값을 가지고 와야함.
		//3. mvc2에서는 controller에서 내가 넘긴 값을 받아서 다음 처리를 진행하게 함.
		//4. ajax의 url은 컨트롤로의 requestMapping과 동일해야함.
		$('#b1').click(function() {
			telVal = $('#tel').val()
			$.ajax({
				url: "text",
				data: {
					tel : telVal
				},
				success: function(x) {
					$('#result').html('<h3>' + x + '</h3>')
				}
			}) //ajax
		})	//b1
		
		$('#b2').click(function() {
			//num2의 값과 num이 같은지 비교
			numVal = $('#num').val() //input일때만 값이 value
			num2Val = $('#result').text()
			if (numVal == num2Val) {
				alert('문자 인증에 성공하여 본인 인증 성공!!')
			}else{
				alert('문자 인증에 성공하여 본인 인증 실패!!')				
			}
			
		})
		
	}) //start
</script>
<body>
인증받을 전화번호: <input id="tel"><input id="b1" type="button"  value="인증번호 받기"><br>
인증받은 번호 넣어서 본인 확인: <input id="num"><input id="b2" type="button" value="인증번호 받기"><br>
<hr color="red">
<div id="result"></div>
</body>
</html>