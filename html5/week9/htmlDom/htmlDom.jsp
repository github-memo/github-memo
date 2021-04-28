<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setChracterEncoding("utf-8"); %>
<!doctype html> <!-- htmlDom.jsp -->
<html><head><meta charset="utf-8"/><meta name="viewport" content="wdith=device-width, initial-scale=1"/>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="../css3/sample.css"/><script src="../js/sample.js"></script>
<title>정보 확인</title></head>
<body>
<section><h2>JSP form</h2>
<section>
<h2>입력 정보</h2>
<h2>입력 값:<%=request.getParameter("id_form")%><br/></h2>
</section>
</section>
</body></html>
