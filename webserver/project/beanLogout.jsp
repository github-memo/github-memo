<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html> <!-- beanLogout.jsp -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta charset="utf-8"/>
<jsp:useBean id="dto" class="studuserpkg.StuduserDTO" scope="session"/>
<title>건강 검진 도우미 로그아웃</title>
</head>
<body>
<%
dto.setVerified(false);
response.sendRedirect("beanHome.html");
%>
</body>
</html>
