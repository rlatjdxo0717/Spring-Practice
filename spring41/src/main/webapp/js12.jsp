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
      $('#add').click(function() {
         reply = $('#reply').val()
         div = $('div')
         div.append(reply + '<br>')
         $('#reply').val('')
      })
      $('#ma').click(function() {
         ma = $('#ma').val()
         div = $('div')
         img = '<img width=100 height=100 src=resources/img/' + ma +'>'
         div.append( img + '<br>')
      })
      $('#sum').click(function() {
    	 reply = $('#reply').val()
         ma = $('#ma').val()
         div = $('div')
         img = '<img width=100 height=100 src=resources/img/' + ma +'>'
         div.append(img + '<br>')
         div.append(reply + '<br>')
      })
   })
   
</script>
</head>
<body>
<hr>
댓글 : <input id='reply'><br>
<hr>
<button id='add' type="button">댓글추가</button>
<button id="ma" type="button" value="ma.png">이미지추가</button>
<button id="sum" type="button" value="ma.png">댓글 + 이미지추가</button>
<hr color="red" size="5">
<div></div>
</body>
</html>