<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
   function go(x) {
      location.href = 'http://www.' + x + '.com'
   }

   function find(y) {
      location.href = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query="
            + y
   }

   function know(z) {
      location.href = "https://search.naver.com/search.naver?where=kdic&sm=tab_jum&query="
            + z
   }

   function arr() {
      name = [ '홍길동', '김길동', '송길동', '정길동' ]
      for (var i = 0; i < name.length; i++) {
         console.log(name[i])
      }
   }

   function data() {
      data = document.getElementById('data').value
      console.log(data.length)
   }

   function data3() {
      pw1 = document.getElementById('pw1').value
      pw2 = document.getElementById('pw2').value
      result = document.getElementById('result')
      console.log("pw1==pw2")
      pw3 = (pw1 == pw2)
      result.innerHTML = pw3
   }

   function plussum() {
      n1 = document.getElementById('n1').value
      n2 = document.getElementById('n2').value
      num1 = parseInt(n1)
      num2 = parseInt(n2)
      sum = parseInt(num1 + num2)
      console.log(sum)
      sum1.innerHTML = sum
      
   }

   function img() {
      img = document.getElementById('pic').value
      result = document.getElementById('result')
      result.innerHTML = '<img src=resources/img/' + img + '.jpg>'
   }
   
</script>
</head>
<body>
   <button onclick="add(100, 200)">더하기 기능 처리</button>
   <button onclick="minus(300)">빼기 기능 처리</button>
   <button onclick="alert('나는 윈도우 객체 꺼')">윈도우 객체 함수 호출</button>
   <button onclick="go('naver')">네이버로 이동</button>
   <button onclick="find('자동차')">검색 기능 처리</button>
   <button onclick="know('자바')">지식인 '자바' 검색 처리</button>
   <button onclick="arr()">배열에 넣고, 프린트</button>
   <hr>
   <input type="text" id="data" value="root">
   <button onclick="data()">id 입력 유효성 인증</button>

   <hr>
   <input type="text" id="pw1" value="1234">
   <input type="text" id="pw2" value="5678">
   <button onclick="data3()">pw가 동일한지 검증</button>
   <br>
   <br>
   <div id="result"
      style="background-color: yellow; width: 500px; height: 200px; font-size: 30px;"></div>

   <hr>

   <input type="text" id="n1" value="12">
   <input type="text" id="n2" value="34">
   <button onclick="plussum()">숫자 더한 결과 출력 버튼</button>
   <div id="sum1"> </div>
   <br>
   
   <hr>

   <input type="text" id="pic" value="m">
   <button onclick="img()">이미지를 보여주는 버튼</button>
   <div id="result"></div>

</body>
</html>