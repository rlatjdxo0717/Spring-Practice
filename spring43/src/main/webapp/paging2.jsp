<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.center { /* 사이트 이름 가운데 정렬, .클래스명 : 'center' 이름을 가진 클래스 적용 */
	text-align: center;
	font-size: 50px;
}

#top3 {
	width: 230px;
	height: 400px;
	background: gray;
	color: white;
	top: 5px;
	right: 0px;
	position: fixed; /* 위치 고정s. 다른 내용이 움직여도 모니터 내 위치 고정 */
	border-radius: 0px 0px 50px 30px; /* 장바구니 모서리 둥근정도 설정 */
}

#feedback {
	font-size: 1em;
}

#selectable .ui-selecting {
	background: #FECA40;
}

#selectable .ui-selected {
	background: #F39814;
	color: white;
}

#selectable {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 100%;
}

#selectable li {
	margin: 0px;
	padding: 0.4em;
	font-size: 1em;
	height: 18px;
}
</style>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
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

    //var $pingingView = $("#paging");
    
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
</head>
<body>
	<div id="paging" style="color: red; font-size: 20px;"></div>
</body>
</html>