<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 해당 태그의 id가 포함된 이 부분들이 페이징을 할때마다 DB에 새롭게 요청하여 데이터를 가져옴. -->
<li id="ui-widget-content"><br><br>
	<c:forEach var="vo" items="${list_CPU}">
	<img src="${vo.img}"><br><br>
	${vo.subject}/${vo.company}/<br>
	${vo.indate}/${vo.sort}/${vo.socket}/${vo.generation}/<br>
	${vo.birth}/${vo.chipline}/${vo.pcie}/${vo.maxpcie}/${vo.fee}원<br><br>
	<a href="add2?cart_image=${vo.img}&
									product_id=${vo.subject}&
									cart_price=${vo.fee}&
									user_id=${user_id}&
									cart_count=1" class="w3-button w3-black w3-round-xlarge">장바구니</a>
	<a href="cpuselect?id=${vo.id}" class="w3-button w3-black w3-round-xlarge">상세페이지</a><hr color="green" width="500px"><br>
	</c:forEach>
</li>