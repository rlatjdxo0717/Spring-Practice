<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head></head>
<meta charset="UTF-8">
<style>
.center{ /* 사이트 이름 가운데 정렬, .클래스명 : 'center' 이름을 가진 클래스 적용 */
	text-align: center; 
	font-size: 50px;
}
input {
	width: 700px; /* 검색창 가로너비 조절 */
	height: 30px; /* 검색창 세로높이 조절 */
	font-size: 20px;
	margin: 0 0 0 550px; /* 왼쪽 여백을 주어 가운데에 위치하도록 조정 */
}

button {
	height: 38px; /* 버튼 세로높이 조절, 너비는 글자 크기에 맞게 자동 조정 */
	font-size: 20px; 
}
</style>
<script type="text/javascript">
$(function() {
	$('#find').click(function() {
		$.ajax({
			type: "POST", //직접 검색한 단어를 컨트롤러로 보내준다.
			url: "find", //컨트롤러의 find와 맵핑한 후, views 폴더의 find.jsp의 페이지로 넘어간다.
			data: {
				subject: $('#subject').val() //직접 검색한 단어를 
			},
			success: function(result) {
				$(result).each(function() {
					$('#div').empty()
					$('#ui-widget-content').html(result)
					$('#document').html(result)
				})
			},
			error: function() {
				alert('연결 실패.')	
			}
		})
	})
})
</script>
</head>
<body>
<h1 class="center">다가져pc</h1>
<input id="subject" type="text"> <!-- 검색창에 단어를 입력하고, -->
<button id="find" type="submit">검색</button> <!-- 검색 버튼을 누르면 물품명에 해당 단어가 포함된 물품이 표시된다. -->
</body>
</html>