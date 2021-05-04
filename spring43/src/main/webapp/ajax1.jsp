<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() { //body태그 안부터 ram에 읽어들여라!!=> DOM Tree
	$('#b1').click(function() {
		alert('b1버튼을 클릭함.!!!')
		//location.href="http://www.naver.com"
		//순서대로 naver페이지를 호출하는 대표적인 방법
		//$.ajax() 원할때 아무때나 특정한 페이지를 호출하는 방법
		$.ajax({
			url: "test.jsp",
			success: function(result) {
				alert('test page연결 성공.!!!!')
				alert('test.jsp의 결과는 ' + result)
			},
			error: function() {
				alert('test page연결 실패.!!!!')
			} 
		})
	}) //b1
	$('#b12').click(function() {
		alert('b12버튼을 클릭함.!!!')
		$.ajax({
			url: "monday.jsp",
			success: function(result) {
				alert('monday.jsp의 결과는 ' + result)
			},
			error: function() {
				alert('monday page연결 실패.!!!!')
			} 
		})
	}) //b12
	$('#b13').click(function() {
		alert('b13버튼을 클릭함.!!!')
		$.ajax({
			url: "sunday", //spring에서는 controller의 주소를 넣어준다.
			success: function(result) {
				alert('sunday.jsp의 결과는 ' + result)
			},
			error: function() {
				alert('sunday page연결 실패.!!!!')
			} 
		})
	}) //b12
}) //start
</script>
</head>
<body>
	<button id="b1">ajax테스트해보자.</button><br>
	<button id="b12">monday.jsp를 ajax로 호출해서 "월요일이다."를 받아와보자.</button><br>
	<button id="b13">views아래에 있는 sunday.jsp를 ajax로 호출!!</button><br>
</body>
</html>






