<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
li {
	margin: 5px 10px 0 -30px; /* 위 오른쪽 아래 왼쪽 */
	padding: 5px; /* 왼쪽 상단 꼭짓점 기준 너비 지정 , 항목별 사이 공간을 넓히기 위해 사용*/
	list-style: none;
	float: left; /* 글자가 왼쪽에서부터 시작되도록 */
	font-size: 17px;
}

#li { /* href 태그된 항목을 제외한 항목 글자 디자인(id환영, 고객센터) */
	font-size: 25px;
	margin-right: 10px; /* '고객센터' 글자가 환영합니다 글자 옆으로 붙지 않도록 오른쪽 여백 설정 */
}
</style>
</head>
<ul>
	<li>${user_Id}님<br>
		환영합니다.</li>    
</ul>
<ul>
	<li><a href="logout">로그아웃</a></li> <!-- 메뉴 별 각 기능을 하는 페이지 전환 -->
	<li><a href="update.jsp">개인정보수정</a></li>
	<li><a href="select.jsp">마이페이지</a></li>
	<li><a href="all">장바구니</a></li>
	<li><a href="delete.jsp">회원탈퇴</a></li>
	<li>고객센터</li>
	<li><a href="b_main.jsp">구매후기 게시판</a></li>
</ul>