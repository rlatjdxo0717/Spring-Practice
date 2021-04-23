<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
var totalData = 20;
var dataPerPage = 5;
var pageCount = 4;

function paging(totalData, dataPerPage, pageCount, currentPage) {
	
	console.log("currentPage : " + currentPage);
	
	var totalPage = Math.ceil(totalData/dataPerPage);
	var pageGroup = Math.ceil(currentPage/pageCount);
	
	console.log("pageGroup : " + pageGroup);
	
	var last = pageGroup * pageCount;
	if (last > totalPage)
		last = totalPage;
	var next = last + 1;
	var first = last - (pageCount - 1);
	var prev = first - 1;
	
	console.log("last : " + last);
	console.log("first : " + first);
	console.log("next : " + next);
	console.log("prev : " + prev);
	
	var $pingingView = $("#paging");
	var html = "";
	
	if (prev > 0)
		html += "<a href=# id='prev'><</a> ";
		
	for (var i = first; i <= last; i++) {
		html += "<a href='#' id=" + i + ">" + i + "</a> ";
	}
	
	if (last < totalPage)
		html += "<a href=# id='next'>></a>";
		

		
	$("#paging").html(html);
	$("#paging a").css("color", "white");
	$("#paging a#" + currentPage).css({"text-decoration":"none",
									   "color":"yellow",
									   "font-weight":"bold"});
	
	$("#paging a").click(function() {
		
		var $item = $(this);
		var $id = $item.attr("id");
		var selectedPage = $item.text();
		
		if($id == "next")	selectPage = next;
		if($id == "prev")	selectPage = prev;
		
		$.ajax({
			url: "graphic",
			data: {
				id: selectedPage
			},
			success: function(result) { //result : url에서 받아온 값
				//alert('json연결 성공!')
				
				$(result).each(function() {
					$('#div').empty()
					$('#ui-widget-content').html(result)
				})
			},
			error: function() {
				alert('all3연결 실패!')
			}           		
		})
		
		paging(totalData, dataPerPage, pageCount, selectedPage);
	})
}

$("document").ready(function() {
	paging(totalData, dataPerPage, pageCount, 1);
});
</script>
<li id="ui-widget-content"><br><br>
	<c:forEach var="vo" items="${list_Graphic}">
	<img src="${vo.img}"><br><br>
	${vo.subject}/<br>
	${vo.company}/${vo.indate}/${vo.series}/<br>
	${vo.chipline}/${vo.chipset}/${vo.base}/<br>
	${vo.boost}/${vo.cuda}/${vo.itf}/${vo.fee}원<br><br>
	<a href="add2?cart_image=${vo.img}&
									product_id=${vo.subject}&
									cart_price=${vo.fee}&
									user_id=${user_Id}&
									cart_count=1" class="w3-button w3-black w3-round-xlarge">장바구니</a>
	<a href="graphselect?id=${vo.id}" class="w3-button w3-black w3-round-xlarge">상세페이지</a><hr color="green" width="500px"><br>
	</c:forEach>
</li>