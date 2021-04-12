<% request.setCharacterEncoding("UTF-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.io.PrintWriter"%>
   <%@ page import="info.Info" %>
   <%@ page import="info.InfoDAO" %>
<!DOCTYPE html>
<html>
	<head>
	<meta name="viewport" content="width=device-width">	
	<meta charset="EUC-UTF-8">
	<meta name="Description" content="초보개발자가 처음 개발해보는 자신만을 위한 웹 페이지입니다.">
	<meta name="Keyword" content="웹개발, 프론트엔드, 백엔드, 김건우, 거누, html, css, java, javascript, tomcat">
	<meta name="author" content="kim kun woo">
	<meta lang="ko">
	<title>introduce | kkw</title>
    <style>
    </style>
        <link
	    href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&family=Noto+Sans+KR:wght@700&display=swap"
	    rel="stylesheet">
	    <link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="css/init.css" rel="stylesheet" type="text/css">
        <link href="css/Header.css" rel="stylesheet" type="text/css">
		<link href="css/Footer.css" rel="stylesheet" type="text/css">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link rel="icon" href="css/tech-icons/favicon.png">
		<script src="https://kit.fontawesome.com/012d5a0fd2.js" crossorigin="anonymous"></script>
	</head>
	<body>
		<div>
			<header class="NavBar">
				<nav>
					<span class="menuBar"><a href="index.jsp">HOME</a></span>
					<span class="menuBar"><a href="About.jsp">ABOUT</a></span>
					<span class="menuBar"><a href="Skill.jsp">SKILL</a></span>
					<span class="menuBar"><a href="QnA.jsp">QnA</a></span>
					<span class="menuBarimg"></span>
				</nav>
			</header>
			<main>
			<%
				int infoID = 0;
				if(request.getParameter("infoID") !=null){
					infoID = Integer.parseInt(request.getParameter("infoID"));
				}
				if(infoID==0){//번호가 반드시 존재해야함
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('유효하지 않습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				Info info = new InfoDAO().getInfo(infoID);
			%>
			<div class="Box"></div>
				<table border="1" style="width:600px; margin:0 auto; text-align:center; margin-top:20px;">
					<thead>
						<tr>
							<th colspan="2">게시판 글 보기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width:20%;">글 제목</td>
							<td colspan="2" style="text-align:left;"><%=info.getInfoTitle() %></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td colspan="2" style="text-align:left;"><%=info.getUserID()%></td>
						</tr>
						<tr>
							<td>작성일자</td>
							<td colspan="2" style="text-align:left;"><%=info.getInfoDate() %></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="2" style="text-align:left; height:300px;">
							<%=info.getInfoContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
						</tr>
					</tbody>
				</table>
				<a href="QnA.jsp">[목록]</a>
				<a href="update.jsp?infoID=<%= infoID %>">[수정]</a>
				<a href="delete.jsp?infoID=<%= infoID %>">[삭제]</a>
			</main>
			<footer>
				<div class="Box"></div>
				<div class="bottomBar">
					<div class="bottomtext1"><p>CONTACT</p></div>
					<div class="contactBar">
					<a href="https://github.com/kkw-knu"><i class="fab fa-github-square fa-2x"></i></a>
					<a href="https://www.instagram.com/_kunw00/"><i class="fab fa-instagram fa-2x"></i></a>
					<a href="https://blog.naver.com/rlarjsdn529"><i class="fas fa-blog fa-2x"></i></a>
					</div><br>
					<div class="bottomtext2"><p>누구나 성공하는 방법을 알고있다.</p><br><p>다만 누구도 실천하지 않을 뿐이다.</p></div>
				</div>
			</footer>
		</div>
	</body>
</html>