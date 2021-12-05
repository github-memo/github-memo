<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html> <!-- idcheck.jsp -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta charset="utf-8"/>
<title>로그인 실습</title>
<jsp:useBean id="dao" class="studuserpkg.StuduserDAO"/>
<%
String stud_id=request.getParameter("stud_id");
boolean flag=true;
String ans="";
if (stud_id==null) {
	stud_id="";
}
if (stud_id.equals("")) {
	flag=dao.checkId(stud_id);
}
if (flag) {
	ans="NO";
	out.print(ans);
} else {
	ans="YES";
	out.print(ans);
}
%>
</head>
<body>
</body>
</html>
