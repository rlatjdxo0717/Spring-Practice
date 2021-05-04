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
      $('#button1').click(function() {
         pw1 = $('#pw1').val()
         pw2 = $('#pw2').val()
         div = $('div')
         if(pw1 == pw2){
            div.html('<h3 style=color:red;>암호 일치</h3>')
         }else{
            div.html('<h3 style=color:blue;>암호 불일치</h3>')
         }
      })
      $('#pw2').keyup(function() { //keyup은 버튼없이 실시간으로 알려줌
         pw1 = $('#pw1').val()
         pw2 = $('#pw2').val()
         div = $('div')
         if(pw1 == pw2){
            div.append('<h3 style=color:red;>암호 일치</h3>') //append는 계속 추가됨 아래 
         }else{
            div.append('<h3 style=color:blue;>암호 불일치</h3>')
         }
      })
      $('#add').click(function() {
         reply = $('#reply').val()
         div = $('div')
         div.append(reply + '<br>')
         $('#reply').val('')
      })
      $('#wow').click(function() {
         wow = $('#wow').val()
         div = $('div')
         img = '<img width=100 height=100 src=resources/img/' + wow +'>'
         div.append( img + '<br>')
      })
   })
   
</script>
<!-- $('div').html('체크한 결과') -->
</head>
<body>
비밀번호1: <input id="pw1"><br>
비밀번호2: <input id="pw2"><br>
<button id="button1">패스워드 일치하는지 확인</button>
<hr>
댓글 : <input id='reply'>
<input type="button" value="댓글추가" id='add'>
<hr>
<input id="wow" type="button" value="wow.png"><br>
<input id="ma" type="button" value="ma.png">
<hr color="red" size="5">
<div></div>
</body>
</html>