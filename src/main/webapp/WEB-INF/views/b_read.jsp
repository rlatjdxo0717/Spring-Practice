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
	c_container = $("#c_container")
	$.ajax({
		url: "c_read",
		data: { 
			cbno: "${vo2.bno}"
		}, //data
		success: function(x){
			c_container.html(x)
		}, // success
		error: function(){
			alert("데이터 못 읽어왔음")
		}
		
	}) //ajax

	$("#like").click(function() {
		likecount = $("#likecount")
		
		// 좋아요 버튼을 누르면 BLIKE 테이블 READ(Select)를 시작.
		// 해당 게시물번호(likebno) 와 세션id(likeid)가 있는지 확인.
		// 만약 해당 내용이 없으면 로우 추가 << 좋아요 !
		// 해당 내용이 select 되면 로우 삭제 << 좋아요 취소 !
		// 로우 추가와 동시에 BOARD 테이블 BLIKE + 1
		// 로우 삭제와 동시에 BOARD 테이블 BLIKE - 1 
		
		$.ajax({
			
			url: "b_like",
			data: {
				likebno: '${vo2.bno}',
				likeid: '${user_id}'
			}, //data
			success: function() {
				b_likecount();
			} // success
			
		}) //ajax
		
	}) // button like
	
		function b_likecount() {
		likecount = $("#likecount")
			// 게시물의 좋아요 숫자를 반환받아서
			// div에 반환해줄거임!
			$.ajax({
			
				url : "b_likecount",
				data : {
					
					bno: '${vo2.bno}'
					 
				}, //data
				success: function(count) {
					likecount.html(count);
				}
				
			}) //ajax
			
		} //function


	$("#c_insert").click(function() {
		c_container = $("#c_container")
		ccontent = $("textarea#content").val(),
		$.ajax({
			url: "c_insert",
			data: {
				cid: "${user_id}",
				ccontent : ccontent ,
				cbno: "${vo2.bno}"
			}, // data
			success: function(x) {
				c_container.html(x)
			}, // success
			error: function() {
				alert('받아오기 실패')
			}
		}) // ajax
		
    }) // button c_insert
    
})		


</script>
</head>
<body>

<h3>게시글</h3>

<hr>
<c:if test = "${sessionScope.user_id == null}" >
로그인 후에 글쓰기 및 댓글입력이 가능합니다.
</c:if>
${user_id} 환영합니다.

<c:if test = "${sessionScope.user_id == vo2.bid}" >
<button onclick="location.href = 'b_update.jsp' ">글 수정하기</button>
<button onclick="location.href = 'b_delete' ">글 삭제하기</button>
</c:if>

<hr>


게시물 번호 ${vo2.bno}<br>
게시물 작성자 ${vo2.bid}<br>
게시물 제목 ${vo2.btitle}<br>
게시물 내용 ${vo2.bcontent}<br>
게시물 작성일자 ${vo2.bdate2}<br>
게시물 조회수 ${vo2.bviews}<br>
<hr>
게시물 추천수 <div id = likecount > ${vo2.blike} </div>
<button id ="like"> 추천 </button>
<br><br>

<hr>

<div id="c_container">댓글 불러올곳</div>


댓글
<p><textarea id="content" cols="40" rows="8" wrap ="hard">
로그인을 하셔야 댓글에 글을 쓸 수 있습니다.
</textarea></p>
<p><button type = "button" id= "c_insert" >댓글등록</button></p>





</body>
</html>