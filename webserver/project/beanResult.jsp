<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="studuserpkg.StuduserDTO"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<!-- beanResult.jsp -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta charset="utf-8" />
<link rel="stylesheet" href="../css/sampleTable.css" />
<title>건강 검진 도우미 결과</title>
<jsp:useBean id="dto" class="studuserpkg.StuduserDTO" scope="session" />
<jsp:useBean id="dao" class="studuserpkg.StuduserDAO" scope="session" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%!boolean isNotEmpty(String str) {
		if (str == null || str.equals(""))
			return false;
		return true;
	}%>
</head>
<body>
	<%
boolean flag=dto.isVerified();
if(!flag) {
response. sendRedirect("bean Home.html");
}
else {
%>
	<header>
		<h2>건강 검진 도우미 결과</h2>
	</header>
	<nav>
		<ul>
			<li><a href="beanLogout.jsp">로그아웃</a></li>
			<li><a href="beanFind.jsp">검색</a></li>
		</ul>
	</nav>
	<section>
		<fieldset class="fset">
			<legend>검색 결과</legend>
			<div style="overflow-x: auto; overflow-y: auto;">
				<table class="ex1">
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>이메일</th>
						<th>성별</th>
						<th>전화번호</th>
						<th>취미</th>
						<th>가입일</th>
					</tr>
					<%  String search_select = request.getParameter("search_select");
						String stud_search = request.getParameter("stud_search");
						List<StuduserDTO> list = new ArrayList<StuduserDTO>();
						
						if (!isNotEmpty(search_select) || !isNotEmpty(stud_search)) { response.sendRedirect("beanFind.jsp"); }
						if ("stud_all".equals(search_select)) { list = dao.findAllStuduser(stud_search);
						} else if ("stud_hobby".equals(search_select)) { list = dao.findHobbyStuduser(stud_search);
						} else if ("stud_name".equals(search_select)) { list = dao.findNameStuduser(stud_search, search_select); }
						String hobby[] = { "", "", "" };
						for (int i=0; i<list.size(); i++) { hobby = list.get(i).getStud_hobby();
						out.println(hobby[0]); out.println(hobby[1]); out.println(hobby[2]);%>
					<tr>
						<td><%= list.get(i).getStud_id() %></td>
						<td><%= list.get(i).getStud_name() %></td>
						<td><%= list.get(i).getStud_gender() %></td>
						<td><%= list.get(i).getStud_phone() %></td>
						<td><%= list.get(i).getStud_email() %></td>
						<td><%= hobby[0] %> <%= hobby[1] %> <%= hobby[2] %></td>
						<td><%= list.get(i).getStud_regdate() %></td>
					</tr>
					<% }} %>
				</table>
			</div>
		</fieldset>
	</section>
	<footer>
		<p>&copy; 20XX Made by Korea. All rights reserved.</p>
	</footer>
</body>
</html>
