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
	num3 = ""
		$('#b2').click(function() {
			$.ajax({
				url: 'money.jsp',
				data: {
					money: $('#money').val(),
					choice: $('#choice').val()
				},
				success: function(result) {
					alert('연결 성공=> ' + result)
					$('div').html("당신의 결제금액은 " + result + "원")
				}
			})
		})
		$('#b3').click(function() {
			//$.ajax()
		})
		$('#b4').click(function() {
			$.ajax({
				url: 'tel.jsp',
				data: {
					tel: $('#tel').val()
				},
				success: function(resu<%@ page language="java" contentType="text/html; charset=UTF-8"
				    pageEncoding="UTF-8"%>
				<!DOCTYPE html>
				<html>
				<head>
				<meta charset="UTF-8">
				<title>Paging</title>
				<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
				</head>
				 
				<script type="text/javascript">
				    
				    var totalData = 1000;    // 총 데이터 수
				    var dataPerPage = 20;    // 한 페이지에 나타낼 데이터 수
				    var pageCount = 10;        // 한 화면에 나타낼 페이지 수
				    
				    function paging(totalData, dataPerPage, pageCount, currentPage){
				        
				        console.log("currentPage : " + currentPage);
				        
				        var totalPage = Math.ceil(totalData/dataPerPage);    // 총 페이지 수
				        var pageGroup = Math.ceil(currentPage/pageCount);    // 페이지 그룹
				        
				        console.log("pageGroup : " + pageGroup);
				        
				        var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
				        if(last > totalPage)
				            last = totalPage;
				        var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
				        var next = last+1;
				        var prev = first-1;
				        
				        console.log("last : " + last);
				        console.log("first : " + first);
				        console.log("next : " + next);
				        console.log("prev : " + prev);
				 
				        var $pingingView = $("#paging");
				        
				        var html = "";
				        
				        if(prev > 0)
				            html += "<a href=# id='prev'><</a> ";
				        
				        for(var i=first; i <= last; i++){
				            html += "<a href='#' id=" + i + ">" + i + "</a> ";
				        }
				        
				        if(last < totalPage)
				            html += "<a href=# id='next'>></a>";
				        
				        $("#paging").html(html);    // 페이지 목록 생성
				        $("#paging a").css("color", "black");
				        $("#paging a#" + currentPage).css({"text-decoration":"none", 
				                                           "color":"red", 
				                                           "font-weight":"bold"});    // 현재 페이지 표시
				                                           
				        $("#paging a").click(function(){
				            
				            var $item = $(this);
				            var $id = $item.attr("id");
				            var selectedPage = $item.text();
				            
				            if($id == "next")    selectedPage = next;
				            if($id == "prev")    selectedPage = prev;
				            
				            paging(totalData, dataPerPage, pageCount, selectedPage);
				        });
				                                           
				    }
				    
				    $("document").ready(function(){
				        paging(totalData, dataPerPage, pageCount, 1);
				    });
				</script>
				 
				<body>
				    <div id="paging"></div>
				</body>
				</html>lt) {
					num3 = result.trim()
					alert('연결 성공=> ' + result)
				}
			})
		})
		$('#b5').click(function() {
			num = $('#num').val()
			alert(num + ' ' + num3)
			if(num == num3){
				alert('인증성공.')
			}else{
				alert('인증실패.')
			}
		})
	})
</script>
</head>
<body>
결제금액: <input id="money"><br>
결제수단: 1)계좌이체, 2)신용카드, 3)휴대폰결제 <input id="choice">
<button id="b2">결제하기(money.jsp)</button>
<hr color="red">
회원가입할 id입력: <input id="id">
<button id="b3">ID중복 체크(check.jsp)</button>
<hr color="red">
인증받을 전화번호 입력: <input id="tel">
<button id="b4">인증 번호 받기(test.jsp)</button><br>
인증받은 숫자입력: <input id="num">
<button id="b5">인증 번호 확인</button>
<hr color="red">
<div style='color:red;background:yellow;font-size: 30px'></div>

</body>
</html>