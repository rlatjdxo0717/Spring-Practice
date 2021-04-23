<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<li id="ui-widget-recommand">
	<!-- PC추천을 할 때 각 부품별로 일정 조건을 거쳐 나온 물건 각 1개씩 총 4개를 브라우저에 구현, 합계 금액까지 표시해준다. -->
	<font size="30" color="brown">PC 추천</font><br><br>
	<img src="${vo.img}"><br><br>
	${vo.subject}/${vo.company}/<br>
	${vo.indate}/${vo.sort}/${vo.socket}/${vo.generation}/<br>
	${vo.birth}/${vo.chipline}/${vo.pcie}/${vo.maxpcie}/${vo.fee}원<br><br>
	<hr color="gold" width="500px"><br>
	<img src="${vo4.img}"><br><br>
	${vo4.subject}/${vo4.company}/${vo4.indate}/${vo4.use}/<br>
	${vo4.classify}/${vo4.standard}/${vo4.capacity}/${vo4.pack}개/${vo4.clock}/<br>
	${vo4.ramtime}/${vo4.voltage}/${vo4.heatsink}/${vo4.fee}원<br><br>
	<hr color="gold" width="500px"><br>
	<img src="${vo3.img}"><br><br>
	${vo3.subject}/${vo3.company}/<br>                              
	${vo3.indate}/${vo3.socket}/${vo3.lineup}/<br>
	${vo3.chipset}/${vo3.factor}/${vo3.power}/${vo3.fee}원<br><br>
	<hr color="gold" width="500px"><br>
	<img src="${vo2.img}"><br><br>
	${vo2.subject}/<br>
	${vo2.company}/${vo2.indate}/${vo2.series}/<br>
	${vo2.chipline}/${vo2.chipset}/${vo2.base}/<br>
	${vo2.boost}/${vo2.cuda}/${vo2.itf}/${vo2.fee}원<br><br>
	<hr color="gold" width="500px"><br>
	<font size="20" color="blue">총 합계 : ${sum}원</font><br><r> 
</li>