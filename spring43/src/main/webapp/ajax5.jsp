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
      $('#b1').click(function() {
         $.ajax({
            url: "computer",
            data: {
               com : $('#com').val(),
               price : $('#price').val(),
               mouse : $('#mouse').val(),
               price2 : $('#price2').val()
            },
            success: function(x) {
               $('#result').html(x)
            }
         }) //ajax
      })   //b1
   }) //start
</script>
<body>
컴퓨터 종류: <input id="com"><br>
컴퓨터 가격: <input id="price"><br>
마우스 종류: <input id="mouse"><br>
마우스 가격: <input id="price2"><br>
<input id="b1" type="button" value="컴퓨터 구매 항목 확인"><br>
<hr color="red">
<div id="result"></div>
</body>
</html>