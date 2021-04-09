<% request.setCharacterEncoding("UTF-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <style>
    </style>
        <link
	    href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&family=Noto+Sans+KR:wght@700&display=swap"
	    rel="stylesheet">
	    <link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="/web/css/init.css" rel="stylesheet" type="text/css">
        <link href="/web/css/Header.css" rel="stylesheet" type="text/css">
		<link href="/web/css/Footer.css" rel="stylesheet" type="text/css">
		<link href="/web/css/explanationproject.css" rel="stylesheet" type="text/css">
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
				<div class="Box"></div>
				<div class="container">
					<div class="container_1">
						<img src="/web/css/homepage.PNG" alt="homepage">
					</div>
					<div class="container_2">
						<h2>웹 페이지 개발 : 나만의 홈페이지 만들기</h2>
						<br>
						<p>개인만의 포트폴리오 공간 <a style="width: 150px; height: 30px; background-color: rgb(230, 230, 230); margin-left: 15px;" href="https://blog.naver.com/rlarjsdn529/222302447911">&nbsp;&nbsp;더보러가기&nbsp;&nbsp;</a></p>
						<br>
						<div class="maintechbox_2">
							<div class="techimage" onclick="location='/web/iconjsp/javascriptjsp.jsp'"><img src="/web/css/tech-icons/javascriptimage.png" alt="Javascript">
								<div>Javascript</div>
							</div>
							<div class="techimage" onclick="location='/web/iconjsp/oraclejsp.jsp'"><img src="/web/css/tech-icons/oracleimage.png" alt="Oracle">
								<div>Oracle</div>
							</div>
							<div class="techimage" onclick="location='/web/iconjsp/javajsp.jsp'"><img src="/web/css/tech-icons/javaimage.png" alt="java">
								<div>java</div>
							</div>
							<div class="techimage" onclick="location='/web/iconjsp/html5jsp.jsp'"><img src="/web/css/tech-icons/html5image.png" alt="html5">
								<div>html5</div>
							</div>
							<div class="techimage" onclick="location='/web/iconjsp/css3jsp.jsp'"><img src="/web/css/tech-icons/css3image.png" alt="css3">
								<div>css3</div>
							</div>
						</div>
					</div>
				</div>
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