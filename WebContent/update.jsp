<% request.setCharacterEncoding("UTF-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.io.PrintWriter"%>
   <%@ page import="info.Info" %>
   <%@ page import="info.InfoDAO" %>
<!DOCTYPE html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	
	<meta charset="EUC-UTF-8">
	<meta name="Description" content="초보개발자가 처음 개발해보는 자신만을 위한 웹 페이지입니다.">
	<meta name="Keyword" content="웹개발, 프론트엔드, 백엔드, 김건우, 거누, html, css, java, javascript, tomcat">
	<meta name="author" content="kim kun woo">
	<meta lang="ko">
	<title>introduce | kkw</title>
    <script>
    function check(){
    	var password = prompt('비밀번호를 입력하세요');
    }
    </script>
        <link
	    href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&family=Noto+Sans+KR:wght@700&display=swap"
	    rel="stylesheet">
	    <link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="/web/css/init.css" rel="stylesheet" type="text/css">
        <link href="/web/css/Header.css" rel="stylesheet" type="text/css">
		<link href="/web/css/Footer.css" rel="stylesheet" type="text/css">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link rel="icon" href="/web/css/tech-icons/favicon.png">
		<script src="https://kit.fontawesome.com/012d5a0fd2.js" crossorigin="anonymous"></script>
	</head>
	<body>
		<div>
			<header class="NavBar">
				<nav>
					<span class="menuBar"><a href="/web/Home.jsp">HOME</a></span>
					<span class="menuBar"><a href="/web/About.jsp">ABOUT</a></span>
					<span class="menuBar"><a href="/web/Skill.jsp">SKILL</a></span>
					<span class="menuBar"><a href="/web/QnA.jsp">QnA</a></span>
					<span class="menuBarimg"></span>
				</nav>
			</header>
			<main>
			<%
			
			int infoID = 0;
			if(request.getParameter("infoID")!=null){
				infoID = Integer.parseInt(request.getParameter("infoID"));
			}
			if(infoID==0){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('유효하지않습니다.')");
				script.println("location.href='QnA.jsp'");
				script.println("</script>");
			}
			Info info = new InfoDAO().getInfo(infoID);
			
			%>
			<div class="Box"></div>
			<form method="post" action="updateAction.jsp?infoID=<%= infoID%>">
				<table border="1" style="width:600px; margin:0 auto; text-align:left; margin-top:20px;">
					<thead>
						<tr>
							<th colspan="2" style="text-align:center;">게시판 수정</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" placeholder="글 제목을 입력하세요" name="infoTitle" maxlength="50" style="width:100%;" value="<%=info.getInfoTitle() %>"></td>
						</tr>
						<tr>
							<td><textarea placeholder="글 내용을 입력하세요" name="infoContent" maxlength="2024" style="height:350px; width:100%;"><%=info.getInfoContent()%></textarea></td>
						</tr>
						<tr>
							<td>PW : <input type="password" placeholder="비밀번호를 입력하세요" name="userPW" maxlength="20" style="width:90%;"></td>  
						</tr>
					</tbody>
				</table>
				<input type="submit" value="글수정">
			</form>	
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