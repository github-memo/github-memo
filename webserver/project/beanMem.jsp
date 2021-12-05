<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html> <!-- beanMem.jsp -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta charset="utf-8"/>
<link rel="stylesheet" href="../css/sample.css"/>
<jsp:useBean id="dto" class="studuserpkg.StuduserDTO" scope="session"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>건강 검진 도우미 회원</title>
</head>
<body>
<%
boolean flag = dto.isVerified();
if (!flag) {
	response.sendRedirect("beanHome.html");
} else {
%>
<header><h2>건강 검진 도우미 회원 화면</h2></header>
<nav><ul><li><a href="beanLogout.jsp">로그아웃</a></li>
<li><a href="beanFind.jsp">검색</a></li></ul></nav>
<section>
이 곳은 오직 회원만이 볼 수 있는 페이지입니다. 메뉴를 선택하세요.
<% } %>
</section>
<footer>
<p>&copy; 20XX Made by Korea. All rights reserved.</p>
</footer>
</body>
</html>
