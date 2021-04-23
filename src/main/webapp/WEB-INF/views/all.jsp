<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>장바구니</title>
</head>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function cs(cart) //함수사용
	{
		var sum = 0; //sum 변수 생성
		var count = cart.ck.length; //체크박스 개수
		var count2 = cart.ct.length; //수량 개수
		for (var i = 0; i < count; i++) {
			if (cart.ck[i].checked || cart.ct[i].checked == true) { //체크 박스에 체크를 하거나, 수량의 갯수를 변경하면
				sum = sum + parseInt(cart.ck[i].value)
						* parseInt(cart.ct[i].value); //sum 변수에 그 값을 추가로 더함
			}
		}
		cart.total_sum.value = sum;

	}
</script>

<body>
	<form name="form">
		여기는 장바구니 페이지...
		<hr color=blue>
		${user_Id}
		님이 추가한 물품들입니다.<br> 구입하고싶은 물품은 체크 하시고 결제를 눌러주세요..!! <br>
		<hr color=blue>
		<br>
		<table width="90%" border="2" align="center">
			<thead>
				<tr>
					<th>V</th>
					<th>No</th>
					<th>사용자 아이디</th>
					<th>상품 명</th>
					<th>상품 사진</th>
					<th>상품 가격</th>
					<th>상품 갯수</th>
				</tr>
			</thead>
			<tbody width="90%" border="2" align="center">
				<tr>
					<c:forEach var="vo" items="${list}">
						<td style="width: 10pt; height: 20pt;"><input name="ck" type="checkbox" value="${vo.cart_price}" onclick="cs(this.form);"></td> <!-- onclick으로 submit 하기 -->
						<td>${vo.cart_id}</td>
						<td style="width: 90pt;">${user_Id}</td>
						<td>${vo.product_id}</td>
						<td><img src=${vo.cart_image}></td>
						<td>${vo.cart_price}원</td>
						<td><input name="ct" type="number" value="${vo.cart_count}" onclick="cs(this.form);"></td>
						<tr>
					</c:forEach>
					<td colspan="7">총 결제 금액 : <input name="total_sum" type="text" readonly> 원<br> <br> <!-- readonly를 쓰면 읽기전용으로 바뀜 (값 수정 x)  -->
						<input type="button" style="width: 60pt; height: 20pt; font-size: 15px" value="결제" onclick="window.open('all2','name',' width=700 height=800');" />
						<input type="button" style="width: 60pt; height: 20pt; font-size: 15px" value="메인으로" onclick="location.href='danawa_main'" />
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	<form>
		<br>
		<hr color=blue>
		추천 주변기기 BEST 상품 !!
		<hr color=blue>
		<br>
		<table width="90%" border="3" align="center">
			<thead>
				<tr>
					<th>상품 이름</th>
					<th>상품 정보</th>
					<th>상품 사진</th>
					<th>상품 가격</th>
					<th>장바 구니</th>
				</tr>
			</thead>
			<tbody width="90%" border="3" align="center">
				<tr>
					<c:forEach var="vo2" items="${list2}">
						<td>${vo2.mini_name}</td>
						<td>${vo2.mini_content}<br> <input type="button"
							onclick="window.open('miniimg.jsp?mini_nm=${vo2.mini_nm}','name',' width=850 height=800');"
							value=">>자세히"></td>
						<td><img src="${vo2.mini_image}"></td>
						<td>${vo2.mini_price}</td>
						<td><a
							href="add?cart_image=${vo2.mini_image}&
									product_id=${vo2.mini_name}&
									cart_price=${vo2.mini_price}&
									user_id=${user_Id}&
									cart_count=1"
							onclick="point1">담기 ➔</a></td>
						<tr>
					</c:forEach>
				</tr>
			</tbody>
		</table>
	</form>
</body>

</html>