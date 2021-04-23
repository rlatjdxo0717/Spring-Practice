<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
var totalData = 10; //전체 데이터의 갯수만큼 확장하여 초기화.
var dataPerPage = 5; //각 부품별 5개씩을 구현. 그러나 4종류 부품에서 모두 포함되는 단어는 없음.
var pageCount = 2;

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
			url: "find2", //직접 검색했을 때, 다음 페이지에 있는 물건들을 보기 위한 비동기식 요청.
			data: {
				id: selectedPage //선택한 페이지 값을 id로 주어 각 페이지마다 DB의 데이터 출력
			},
			success: function(result) { //result: url에서 받아온 값
				$(result).each(function() {
					$('#div').empty()
					$('#ui-widget-content').html(result)
					$('#document').html(result)
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
<!-- 직접 검색을 했을 때, 물품명에서 해당 단어가 포함된 물품을 모두 검색해서 가져옴. -->
<li id="ui-widget-content"><br><br>
	<c:forEach var="vo" items="${list_CPU}">
	<img src="${vo.img}"><br>
	${vo.subject}/${vo.company}/<br>
	${vo.indate}/${vo.sort}/${vo.socket}/${vo.generation}/<br>
	${vo.birth}/${vo.chipline}/${vo.pcie}/${vo.maxpcie}/${vo.fee}원<br>
	<a href="add2?cart_image=${vo.img}&
									product_id=${vo.subject}&
									cart_price=${vo.fee}&
									user_id=${user_id}&
									cart_count=1" class="w3-button w3-black w3-round-xlarge">장바구니</a>
	<a href="cpuselect?id=${vo.id}" class="w3-button w3-black w3-round-xlarge">상세페이지</a><hr color="green" width="500px">
	</c:forEach>
	<c:forEach var="vo" items="${list_Memory}">
	<img src="${vo.img}"><br>
	${vo.subject}/${vo.company}/${vo.indate}/${vo.use}/<br>
	${vo.classify}/${vo.standard}/${vo.capacity}/${vo.pack}개/${vo.clock}/<br>
	${vo.ramtime}/${vo.voltage}/${vo.heatsink}/${vo.fee}원<br>
	<a href="add2?cart_image=${vo.img}&
									product_id=${vo.subject}&
									cart_price=${vo.fee}&
									user_id=${user_id}&
									cart_count=1" class="w3-button w3-black w3-round-xlarge">장바구니</a>
	<a href="memoryselect?id=${vo.id}" class="w3-button w3-black w3-round-xlarge">상세페이지</a><hr color="green" width="500px">
	</c:forEach>
	<c:forEach var="vo" items="${list_MainBoard}">
	<img src="${vo.img}"><br>                                        
	${vo.subject}/${vo.company}/<br>                              
	${vo.indate}/${vo.socket}/${vo.lineup}/<br>
	${vo.chipset}/${vo.factor}/${vo.power}/${vo.fee}원<br>
	<a href="add2?cart_image=${vo.img}&
									product_id=${vo.subject}&
									cart_price=${vo.fee}&
									user_id=${user_id}&
									cart_count=1" class="w3-button w3-black w3-round-xlarge">장바구니</a>
	<a href="mbselect?id=${vo.id}" class="w3-button w3-black w3-round-xlarge">상세페이지</a><hr color="green" width="500px">
	</c:forEach>
	<c:forEach var="vo" items="${list_Graphic}">
	<img src="${vo.img}"><br>
	${vo.subject}/<br>
	${vo.company}/${vo.indate}/${vo.series}/<br>
	${vo.chipline}/${vo.chipset}/${vo.base}/<br>
	${vo.boost}/${vo.cuda}/${vo.itf}/${vo.fee}원<br>
	<a href="add2?cart_image=${vo.img}&
									product_id=${vo.subject}&
									cart_price=${vo.fee}&
									user_id=${user_id}&
									cart_count=1" class="w3-button w3-black w3-round-xlarge">장바구니</a>
	<a href="graphselect?id=${vo.id}"  class="w3-button w3-black w3-round-xlarge">상세페이지</a><hr color="green" width="500px">
	</c:forEach>
</li>