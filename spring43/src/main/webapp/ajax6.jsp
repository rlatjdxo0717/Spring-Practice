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
            url: "fruit",
            success: function(x) {
               $('#result').html(x)
            }
         }) //ajax
      })   //b1
      $('#b2').click(function() {
         $.ajax({
            url: "tour",
            success: function(x) {
               $('#result').html(x)
            }
         }) //ajax
      })   //b1
   }) //start
</script>
<body>
<input id="b1" type="button" value="과일 목록을 가지고 와보자."><br>
<input id="b2" type="button" value="여행 목록을 가지고 와보자."><br>
<hr color="red">
<div id="result"></div>
</body>
</html>