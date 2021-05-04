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
		$('button').click(function() {
			pw1 = $('#pw1').val()
			pw2 = $('#pw2').val()
			div = $('div')
			if(pw1 == pw2){
				div.html('<h3 style=color:red;>암호 일치</h3>')
			}else{
				div.html('<h3 style=color:blue;>암호 불일치</h3>')
			}
		})
		$('#pw2').keyup(function() {
			pw1 = $('#pw1').val()
			pw2 = $('#pw2').val()
			div = $('div')
			if(pw1 == pw2){
				div.append('<h3 style=color:red;>암호 일치</h3>')
			}else{
				div.append('<h3 style=color:blue;>암호 불일치</h3><br>')
			}
		}) //pw2
		
		$('#add').click(function() {
			reply = $('#reply').val() //get
			div = $('div')
			div.append('- ' + reply + '<br>')
			$('#reply').val('') //set
		}) //add
		
		$('#car1').click(function() {
			car1 = $('#car1').val()
			div = $('div')
			div.append('- ' + car1 + '<br>')
		}) //ma
		
		$('#car2').click(function() {
			car2 = $('#car2').val()
			div = $('div')
			img = '<img width=100 height=100 src=resources/img/' + car2 + '>'
			div.append('- ' + img + '<br>')
		}) //car2
		
	}) //root
	
</script>
<!-- $('div').html('체크한 결과') -->
</head>
<body>
비밀번호1: <input id="pw1"><br>
비밀번호2: <input id="pw2"><br>
<button>패스워드 일치하는지 확인</button>
<hr>
댓글: <input id='reply'>
<input type="button" value="댓글추가" id = 'add'>
<hr>
<input id="car1" type="button" value='car.jpg' style='background:yellow; font-size:20px;'>
<input id="car2" type="button" value='ma.jpg'  style='background:pink; font-size:20px;'>
<hr color="red" size="5">
<div></div>
</body>
</html>



