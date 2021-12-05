<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html> <!-- beanLogin.jsp -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta charset="utf-8"/>
<link rel="stylesheet" href="../css/sample.css"/>
<jsp:useBean id="dto" class="studuserpkg.StuduserDTO" scope="session"/>
<jsp:useBean id="dao" class="studuserpkg.StuduserDAO" scope="session"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%!
boolean isNotEmpty(String str) {
	if((str==null)||str.equals("")) return false;
	return true; }
%>
<title>건강 검진 도우미 로그인</title>
</head>
<body>
<%
String user_id=request.getParameter("user_id");
String user_passwd=request.getParameter("user_passwd");
if (!isNotEmpty(user_id)||!isNotEmpty(user_passwd)) {
response.sendRedirect("beanLogin.html");
} else {
if (dao.checkPwd(user_id, user_passwd)) {
dto.setStud_id(user_id);
dto.setVerified(true);
response.sendRedirect("beanMem.jsp");
} else {
	response.sendRedirect("beanLogin.html");
}}
%> </body></html>
