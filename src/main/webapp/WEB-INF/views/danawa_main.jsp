<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL을 사용하여 arrayList를 사용하는 방식으로 요구에 충족하는 부품들의 모든 데이터를 불러온다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/main_exterior.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.center{ /* .클래스명 : 'center' 이름을 가진 클래스 적용 */
	text-align: center; 
	font-size: 50px;
}

#top3 {
	width: 240px;
	height: 400px;
	background: gray;
	color: white;
	top: 5px;
	right: 0px;
	position: fixed; /* 위치 고정. 다른 내용이 움직여도 모니터 내 위치 고정 */
	border-radius: 0px 0px 50px 30px; /* 장바구니 모서리 둥근정도 설정 */
}

#feedback { font-size: 1em; } /* 1em : font 단위, 기본 font 크기. 글자 크기 산정방식 : 상위 클래스 글자 크기 * n(em) = 해당 클래스 font의 크기
									      여기선  1em이므로 상위 클래스의 글자 크기(기본 크기) * 1(em) = 기본 font 크기 */
  #selectable .ui-selecting { background: #FECA40; }
  #selectable .ui-selected { background: #F39814; color: white; }
  #selectable { list-style-type: none; margin: 0; padding: 0; width: 100%; }
  #selectable li { margin: 0px; padding: 0.4em; font-size: 1em; height: 18px; }
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
var totalData = 20; //각 부품별 데이터베이스에 저장된 자료의 갯수
var dataPerPage = 5; //한 페이지당 표시되는 물품 수
var pageCount = 4; //총 페이지수를 미리 지정해 두어 정해진 총 데이터 갯수만큼 데이터가 표시되도록 함.

function paging(totalData, dataPerPage, pageCount, currentPage) {
	
	console.log("currentPage : " + currentPage);
	
	var totalPage = Math.ceil(totalData/dataPerPage); //전체 페이지 : 20/5 = 총 4페이지
	//페이지 단위 : 현재 페이지/총 페이지 나눗셈으로 각 페이지별 표시되는 데이터의 순번 지정할수 있도록 함.
	//반올림 함수를 이용하여 만약 최대로 저장할수 있는 자료의 갯수를 채우지 못하더라도 갯수가 모자란 페이지가 표시할 수 있도록 함.
	var pageGroup = Math.ceil(currentPage/pageCount);
	
	console.log("pageGroup : " + pageGroup);
	
	var last = pageGroup * pageCount; //화면에 보여질 페이지 마지막 번호
	if (last > totalPage) //마지막 페이지까지 도달하면 연장화살표가 표시되지 않도록 함.
		last = totalPage;
	var next = last + 1; //다음페이지
	var first = last - (pageCount - 1); //화면에 보여질 페이지 번호
	var prev = first - 1; //이전 페이지
	
	console.log("last : " + last);
	console.log("first : " + first);
	console.log("next : " + next);
	console.log("prev : " + prev);
	
	var $pingingView = $("#paging");
	var html = ""; //페이지를 넘겨주기 위한 주소를 문자열 초기화
	
	if (prev > 0)
		//브라우저에 표시된 페이징 숫자를 id=에 넣어주어 화면별 지정된 데이터들을 가져올 수 있게 함.
		html += "<a href=# id='prev'><</a> ";
		
	for (var i = first; i <= last; i++) {
		//페이지 나열.
		html += "<a href='#' id=" + i + ">" + i + "</a> ";
	}
	
	if (last < totalPage)
		//화면에 표시된 페이지 이후의 페이지가 있다면 화살표 모양을 만들어 주어 이후 페이지를 볼 수 있게 함.
		html += "<a href=# id='next'>></a>";

	$("#paging").html(html); //페이지 정보를 브라우저에 구현 
	$("#paging a").css("color", "white"); //브라우저에 표시된 화면의 스타일.
	//페이지를 클릭했을 때, 해당 페이지가 눌려있다는 것을 인지하기 위핸 표시.
	$("#paging a#" + currentPage).css({"text-decoration":"none",
									   "color":"yellow",
									   "font-weight":"bold"});
	
	//첫 화면에서 페이지가 표시되는데, 첫 화면의 페이지에서 페이지 번호들을 클릭했을 경우 
	$("#paging a").click(function() {
		
		var $item = $(this); //페이지를 클릭하면
		var $id = $item.attr("id"); //페이지의 번호가 id= 에 들어감.
		var selectedPage = $item.text(); //해당 페이지의 text만 가져옴.(ex) 1, 2, 3, ..)
		
		//페이지를 각각 클릭했을 때.
		if($id == "next")	selectPage = next;
		if($id == "prev")	selectPage = prev;
		
		//첫 화면의 페이지를 눌렀을 때 물건들을 불러오도록 함.
		$.ajax({
			url: "cpu", //views 폴더의 cpu.jsp로 가서 cpu의 정보들을 db에서 꺼내어 db에 저장된 순서대로 보여줌.
			data: {
				id: selectedPage //페이지를 눌렀을 때 페이지의 숫자가 문자열로 id= 에 들어감.
			},
			success: function(result) { //result : url에서 받아온 값
				$(result).each(function() { //비동기식 연결이 성공했을 때, 각 부품 마다의 정보를 화면에 구현하도록 함.
					$('#div').empty() //화면에 비동기식으로 바뀌는 부분만을 깨끗하게 보여주기 위해 div 속성에 있는 값들을 모두 제거해준다.
					$('#ui-widget-content').html(result) //id가 ui-widget-content 태그로 감싸진 정보만을 계속해서 바꾸면서 출력해준다.
					$('#document').html(result) //페이징이 자연스러워 지도록 브라우저에 표시.
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

//제품들이 브라우저에 표시될 때 적용될 스타일 함수
$(function() {
    $( "#selectable" ).selectable();
    
});

//각 버튼(CPU, 메모리, 메인보드, 그래픽카드, PC 추천)을 눌렀을 때 ajax방식을 활용한 구현정보 변경.
$(function() {
	$('#b1').click(function() {
		$.ajax({
			url: "cpu_button", //각 버튼마다 컨트롤러에서 맵핑되어 일정 연산을 수행하고 views 아래에 대응하는 jsp파일을 모두 만들어줌.
			success: function(result) {
				$('#div').empty() //원하는 부분만 교체하기 위해 해당되는 태그의 모든 내용을 지워준다.
				//이후 해당하는 태그 안에 들어있는 내용만을 (url).jsp에 넣어두고 해당되는 내용만 불러내어 페이지의 원하는 교체 작업만 해줄 수 있게 해줌.
				$('#ui-widget-content').html(result)
			},
			error: function() {
				alert('연결 실패.') //에러가 났을 때 인지할 수 있도록.	
			}
		})
	})
	
	$('#b2').click(function() {
		$.ajax({
			url: "memory_button",
			success: function(result) {
				$('#div').empty()
				$('#ui-widget-content').html(result)
			},
			error: function() {
				alert('연결 실패.')	
			}
		})
	})
	
	$('#b3').click(function() {
		$.ajax({
			url: "mainboard_button",
			success: function(result) {
				$('#div').empty()
				$('#ui-widget-content').html(result)
			},
			error: function() {
				alert('연결 실패.')	
			}
		})
	})
	
	$('#b4').click(function() {
		$.ajax({
			url: "graphic_button",
			success: function(result) {
				$('#div').empty()
				$('#ui-widget-content').html(result)
			},
			error: function() {
				alert('연결 실패.')	
			}
		})
	})
	
	$('#b5').click(function() {
		$.ajax({
			url: "random",
			success: function(result) {
				$('#div').empty()
				$('#ui-widget-recommand').html(result)
			},
			error: function() {
				alert('연결 실패.')	
			}
		})
	})
})

</script>

</head>
<body>
	<div id="total"> <!-- 상단 메뉴는 내부 내용이 바뀌어도 고정되게끔 한다. -->
		<div id="top">
			<!-- 사이트 이름 및 검색 탭 -->
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
 		<div id="top3">
			<!-- 개인정보 및 고객센터 탭 -->
			<jsp:include page="top3.jsp"></jsp:include>
		</div>
		
		<ul>
			<!-- 가장 좌측에 있는 기능. 나머지 2개의 기능도 순차적으로 오른쪽으로 붙는다. -->
			<li style="background: green; margin:0 0 0 100px">
				<div class="left" style="border:solid 5px #333333; width: 600px; height: 2000px">
					<dl class="group_1_list">
						<ol id="selectable"> <!-- 제품 정보가 표시될 때 글자 및 구현될 공간에 스타일 적용 -->
							<li id="ui-widget-recommand">
								<font size="30" color="brown">PC 추천</font>
							</li>
						</ol>
					</dl>
				</div>	
			</li>
		</ul>
		
		<ul>
			<li style="background: red; margin:0 auto">
				<div class="middle" style="border:solid 5px #333333; width: 600px; height: 2000px">
					<dl class="group_0_list">
						<ol id="selectable">
							<li id="ui-widget-content"><br><br>
								<!-- JSTL 사용. selectList를 이용하여 DB에서 가져온 데이터를 모두 화면에 출력. -->
								<c:forEach var="vo" items="${list_CPU}">
								<!-- DB에 저장된 컬럼명 --> 
								<img src="${vo.img}"><br><br>
								${vo.subject}/${vo.company}/<br>
								${vo.indate}/${vo.sort}/${vo.socket}/${vo.generation}/<br>
								${vo.birth}/${vo.chipline}/${vo.pcie}/${vo.maxpcie}/${vo.fee}원<br><br>
								<!-- 장바구니에 회원id, 물품명, 물품 가격이 받아온다. --> 
								<a href="add2?cart_image=${vo.img}&
									product_id=${vo.subject}&
									cart_price=${vo.fee}&
									user_id=${user_Id}&
									cart_count=1" class="w3-button w3-black w3-round-xlarge">장바구니</a>
									
								<a href="cpuselect?id=${vo.id}" class="w3-button w3-black w3-round-xlarge">상세페이지</a><hr color="green" width="500px"><br>
								</c:forEach>
							</li>
						</ol>
					</dl>
					<div id="paging"></div><!-- 페이징 적용, 적당한 위치에 두어 가독성을 높임. -->
				</div>
			</li>
		</ul>
		
		<ul>
			<li style="background: blue; margin:0 auto">
				<div class="right" style="border:solid 5px #333333; width: 300px; height: 2000px">
					<dl class="group_1_list">
						<ol id="selectable">
							<li id="ui-widget-button">
								<!-- 각 목록별 버튼, 버튼을 누르면 해당 부품의 목록이 브라우저에 출력된다. -->
								<button id="b1" class="w3-button w3-black w3-round-xlarge" style="float:center;">CPU</button><br><br><br>
								<button id="b2" class="w3-button w3-black w3-round-xlarge" style="float:center;">메모리</button><br><br><br>
								<button id="b3" class="w3-button w3-black w3-round-xlarge" style="float:center;">메인보드</button><br><br><br>
								<button id="b4" class="w3-button w3-black w3-round-xlarge" style="float:center;">그래픽카드</button><br><br><br>
								<button id="b5" class="w3-button w3-black w3-round-xlarge" style="float:center;">추천 클릭</button><br><br><br>
							</li>
						</ol>
					</dl>
				</div>	
			</li>
		</ul>
	</div>
</body>
</html>