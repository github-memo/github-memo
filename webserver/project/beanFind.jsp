<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html> <!-- beanFind.jsp -->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta charset="utf-8"/>
<link rel="stylesheet" href="../css/sample.css"/>
<jsp:useBean id="dto" class="studuserpkg.StuduserDTO" scope="session"/>
<title>건강 검진 도우미 검색</title>
</head><body>
<% boolean flag=dto.isVerified();
if (!flag) { response.sendRedirect("beanHome.html"); } else { %>
<header><h2>건강 검진 도우미 검색</h2></header>
<nav><ul>
<li><a href="beanLogout.jsp">로그아웃</a></li>
<li><a href="beanFind.jsp">검색</a></li>
</ul></nav>
<section>
<form action="beanResult.jsp" method = "post">
<fieldset class="fset"><legend>검색</legend>
<select name="search_select">
<option value="stud_all" selected>전체</option>
<option value="stud_name">회원 성명</option>
<option value="stud_hobby">취미 운동</option>
</select>
<input id="find_form" type="text" name="stud_search" size="20" maxlength="50"/>
<input type="submit" value="검색">
</fieldset>
</form>
<% } %>
</section>
<footer><p>&copy; 20XX Made by Korea. All rights reserved.</p></footer></body></html>
