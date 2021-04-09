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
		<link href="/web/css/icon.css" rel="stylesheet" type="text/css">
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
				<div class="big">
					<div class="small">
						<img src="/web/css/tech-icons/javaimage.png" alt="java">
						<br>
						<h2 class="textcsenter">Java</h2>
						<br>
						<p>객체지향언어로서 컴파일하면 다른 운영 체제에서 사용할 수 있도록 클래스로 제공된다.</p>
						<br>

					</div>
					<div style="display: flex; flex-direction: column; align-items: center;">
						<h2 style="margin: 15px;">관련 포스팅</h2>
						<div class="workbox">
							<article class="imagebox" onclick="location='/web/projectjsp/homepagejsp.jsp'">
							<img src="/web/css/homepage.PNG" alt="homepage make">
							<h2>나만의 홈페이지만들기</h2>
							<p>개인만의 포트폴리오 공간</p>
							</article>
							<article class="imagebox">
								<img src="http://placehold.it/300x300.jpg" alt="test">
								<h2>test</h2>
								<p>test</p>
							</article>
							<article class="imagebox">
								<img src="http://placehold.it/300x300.jpg" alt="test">
								<h2>test</h2>
								<p>test</p>
							</article><article class="imagebox">
								<img src="http://placehold.it/300x300.jpg" alt="test">
								<h2>test</h2>
								<p>test</p>
							</article><article class="imagebox">
								<img src="http://placehold.it/300x300.jpg" alt="test">
								<h2>test</h2>
								<p>test</p>
							</article>
							</article><article class="imagebox">
								<img src="http://placehold.it/300x300.jpg" alt="test">
								<h2>test</h2>
								<p>test</p>
							</article>
							</article><article class="imagebox">
								<img src="http://placehold.it/300x300.jpg" alt="test">
								<h2>test</h2>
								<p>test</p>
							</article>
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