<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>결제창</title>
</head>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function cs(cart) //함수사용
	{
		var sum = 0; //sum 변수 생성
		var count = cart.ck.length; //체크박스 쪽
		var count2 = cart.ct.length; //수량 쪽
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
		주문서확인 
		<hr color=pink>
		<%=session.getAttribute("id")%>
		님이 결제하실 물품들입니다.
		<hr color=pink>
		<br>
		<table width="90%" border="2" align="center">
			<thead>
				<tr>
					<th>V</th>
					<th>상품 명</th>
					<th>상품 사진</th>
					<th>상품 가격</th>
					<th>상품 갯수</th>
				</tr>
			</thead>
			<tbody width="90%" border="2" align="center">
				<tr>
					<c:forEach var="vo" items="${list}">
						<td style="width: 10pt; height: 20pt;"><input name="ck"
							type="checkbox" value="${vo.cart_price}" onclick="cs(this.form);"></td>
						<td>${vo.product_id}</td>
						<td><img src=${vo.cart_image}></td>
						<td>${vo.cart_price}원</td>
						<td><input name="ct" type="number" value="${vo.cart_count}" style="width:40px;height:15px;"
							onclick="cs(this.form);"></td>
						<tr>
					</c:forEach>
				<tr>
					<td colspan="5">이름: <input type="text" style="width:60px;height:15px;"></td>
				<tr>
				<tr>
					<td colspan="5">휴대폰 번호 : <select name="fruit">
							<option value="019">019</option>
							<option value="017">017</option>
							<option value="011">011</option>
							<option value="010" selected="selected">010</option>
					</select> - <input type="text" style="width:40px;height:15px;"> - <input type="text" style="width:40px;height:15px;"></td>
				<tr>
				<tr>
					<td colspan="5">주소지 : <input type="text" style="width:300px;height:15px;"></td>
				<tr>
					<td colspan="5">배송중 건의사항 :<br>
					 <textarea cols="50" rows="10"></textarea>
					</td>
				<tr>

				</tr>
			</tbody>
		</table>
 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;총 결제 금액 : <input name="total_sum" type="text"
						readonly> 원
	</form>
	<br>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<button type="submit">결제</button>
</body>
</html>