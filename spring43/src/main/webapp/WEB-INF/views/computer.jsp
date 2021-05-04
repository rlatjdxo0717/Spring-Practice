<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>${v}
<table>
	<tr>
		<td style="background:yellow; font-size: 20px; width: 150px; height: 50px;">컴퓨터종류</td>
		<td style="background:yellow; font-size: 20px; width: 150px; height: 50px;">마우스종류</td>		
		<td style="background:yellow; font-size: 20px; width: 150px; height: 50px;">컴퓨터가격</td>
		<td style="background:yellow; font-size: 20px; width: 150px; height: 50px;">마우스가격</td>		
	</tr>
	<tr>
		<td style="background:pink; font-size: 20px; width: 150px; height: 50px;">${vo.com}</td>
		<td style="background:pink; font-size: 20px; width: 150px; height: 50px;">${vo.mouse}</td>		
		<td style="background:pink; font-size: 20px; width: 150px; height: 50px;">${vo.price}원</td>	
		<td style="background:pink; font-size: 20px; width: 150px; height: 50px;">${vo.price2}원</td>	
	</tr>
	<tr>
		<td colspan="2">
			<a href="ajax3.jsp">문자인증받기</a>
		</td>
	</tr>	
</table>