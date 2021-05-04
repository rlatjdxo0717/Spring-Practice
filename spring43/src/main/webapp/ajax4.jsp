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
            url: "movie",
            data: {
               title : $('#title').val(),
               price : $('#price').val()
            },
            success: function(x) {
               $('#result').html(x)
            }
         }) //ajax
      })   //b1
   }) //start
</script>
<body>
영화제목: <input id="title"><br>
영화관람료: <input id="price"><br>
<input id="b1" type="button" value="영화 관람 확인"><br>
<hr color="red">
<div id="result"></div>
</body>
</html>