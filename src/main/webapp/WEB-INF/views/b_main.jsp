<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">

$(function() {

/* ajax <-> 함수 구분선 */
	
   b_container = $("#b_container")
   $("#s_button").click(function(){
      $.ajax({
         url: "b_search",
         data : {
            s_field : $('#s_field option:selected').val(),
            s_word : $('#s_word').val()
         }, //data
         success: function(x) {
            alert("검색성공"),
            b_container.html(x)
         }, // success
         error: function() {
            alert("검색실패")
         } //error
         
      }) //ajax
      
   }) //s_button
   
})
   
   //퀵정렬을 이용한 정렬기능 구현
   //먼저 main에서 "버튼" 클릭 시 컨트롤러로 이동
   //기존 select와 동일하게 진행? (쿼리의 오름차순,내림차순 기능 이용 없이?)
   //view 단으로 담아온 데이터를 퀵소트 진행<<??
		
$(function() {
	$('.sort').click(function() {
	var sort = $(this).attr('id');
	
		$.ajax({
			 url: "b_sort",
			 data: {
				sort : sort
			 }, // data
			 success : function(x) {
				 alert("정렬성공");
				 b_container.html(x)
			 }, // success
			 error : function( ){
				alert("데이터를 못 읽어왔음");
			 } // error
		  }) // ajax
		}) // b_sort
	
	$('#quick').click(function() {
	
		$.ajax({
			 url: "b_quick",
			 data: {
				
			 }, // data
			 success: function(x) {
				 alert("퀵정렬 불러오기 성공")
				 b_container.html(x)
			 }, // success
			 error: function() {
				alert("데이터를 못 읽어왔음")
			 	} // error
		 	}) // ajax
		}) // b_quick
	})

function not_logged(){
	alert("로그인 후에 글쓰기 및 댓글입력이 가능합니다.")
}



</script>

</head>
<body>
<h3> 구매후기 게시판 </h3>
<hr>
<c:if test = "${sessionScope.user_id == null}" >
로그인 후에 글쓰기 및 댓글입력이 가능합니다.
<p><button type="button" onclick="not_logged()">글쓰기</button></p>
</c:if>
<c:if test = "${sessionScope.user_id == user_Id}" >
${user_id} 환영합니다.
<p><button type="button" onclick="location.href = 'b_write.jsp' ">글쓰기</button></p>
</c:if>

<hr>

<!-- java의 핵심적인 문법은 tag로 편하게 쓰자 -->
<!-- jstl: java standard tag library -->
<p>검색 : <input type ="text" id ="s_word">

<select id = "s_field">
   <option value="btitle" selected>제목</option>
   <option value="bcontent">내용</option>
   <option value="bid">작성자</option>
</select>

<button type="button" id="s_button">찾기</button><p>


<hr>
<button type="button" class="sort" id="bdate">최신순</button>
<button type="button" class="sort" id="bviews">조회순</button>
<button type="button" class="sort" id="blike">추천순</button>

<p><button type="button" id="quick">퀵정렬</button></p>
<hr>


<div id = "b_container">
<hr>
<c:forEach var="vo" items="${list}">
게시물 번호 ${vo.bno}<br>
게시물 작성자 ${vo.bid}<br>
게시물 제목 <a href = "b_read?bno=${vo.bno}">${vo.btitle}</a><br>
<!-- 게시글 제목에 컨트롤러 b_read 로 태그를 걸어줬음. -->
게시물 작성일자 ${vo.bdate2}<br>
게시물 추천수 ${vo.blike}<br>
게시물 조회수 ${vo.bviews}<br>
<hr>
</c:forEach>
</div>
</body>
</html>