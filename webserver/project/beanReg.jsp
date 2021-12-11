<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<!-- beanReg.jsp -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta charset="utf-8" />
<script>function fnError() {alert("내용을 모두 입력하세요."); history.back();}</script>
<link rel="stylesheet" href="../css/sampleTable.css" />
<title>건강 검진 도우미 회원 가입</title>
<jsp:useBean id="dto" class="studuserpkg.StuduserDTO" />
<jsp:useBean id="dao" class="studuserpkg.StuduserDAO" />
<jsp:setProperty name="dto" property="*" />
</head>
<body>
	<header>
		<h2>건강 검진 도우미 회원 가입</h2>
	</header>
	<nav>
		<ul>
			<li><a href="beanLogin.html">로그인</a></li>
			<li><a href="beanReg.html">회원등록</a></li>
		</ul>
	</nav>
	<section>
		<fieldset class="fset">
			<legend>등록 결과</legend>
			<%
			if (dto.getStud_id() == null || dto.getStud_passwd() == null || dto.getStud_name() == null
					|| dto.getStud_phone() == null || dto.getStud_gender() == null || dto.getStud_email() == null
					|| dto.getStud_id().trim().equals("") || dto.getStud_passwd().trim().equals("")
					|| dto.getStud_name().trim().equals("") || dto.getStud_phone().trim().equals("")
					|| dto.getStud_gender().trim().equals("") || dto.getStud_email().trim().equals("")) {
			%>
			<section>
				<script>fnError();</script>
			</section>
			<%
			return;
			}
			%>
			<%
			String[] uHobby = dto.getStud_hobby();
			String[] sHobby = {"", "", ""};
			if (uHobby != null) {
				for (int i = 0; i < uHobby.length; i++) {
					if (uHobby[i].equals("헬스")) {
				sHobby[0] = "헬스";
					} else if (uHobby[i].equals("홈트")) {
				sHobby[1] = "홈트";
					} else if (uHobby[i].equals("필테")) {
				sHobby[2] = "필테";
					}
				}
			}
			int rec_no = dao.insertStuduser(dto.getStud_id(), dto.getStud_passwd(), dto.getStud_name(), dto.getStud_phone(),
					dto.getStud_gender(), dto.getStud_email(), sHobby);
			if (rec_no > 0) {
			%>
			<script>alert("성공"); location.href"beanHome.html"</script>
			<%
			} else {
			%>
			<script>alert("실패"); location.href"beanHome.html"</script>
			<%
			}
			%>
			<div style="overflow-x: auto; overflow-y: auto;">
				<table class="ex1">
					<tr>
						<th>이름</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>성별</th>
						<th>취미</th>
					</tr>
					<tr>
						<td><%=dto.getStud_name()%></td>
						<td><%=dto.getStud_email()%></td>
						<td><%=dto.getStud_phone()%></td>
						<td><%=dto.getStud_id()%></td>
						<td><%=dto.getStud_passwd()%></td>
						<td><%=dto.getStud_gender()%></td>
						<td><%=sHobby[0]%> <%=sHobby[1]%> <%=sHobby[2]%></td>
					</tr>
				</table>
			</div>
		</fieldset>
	</section>
	<footer>
		<p>&copy; 20XX Made by Korea. All rights reserved.</p>
	</footer>
</body>
</html>
