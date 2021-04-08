<% request.setCharacterEncoding("UTF-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<!-- 반응형 웹 설정을 위한 과정 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	
	<meta charset="EUC-UTF-8">
	<!-- 문서에 대한 설명 -->
	<meta name="Description" content="초보개발자가 처음 개발해보는 자신만을 위한 웹 페이지입니다.">
	<!-- 문서에 대한 키워드 검색 엔진에 제공 -->
	<meta name="Keyword" content="웹개발, 프론트엔드, 백엔드, 김건우, 거누, html, css, java, javascript, tomcat">
	<!-- 문서의 저자 이름 -->
	<meta name="author" content="kim kun woo">
	<!-- 어떤 언어로 이루어진 웹페이지인지를 지정하는 속성 지금같은 경우는 한글이라고 나타내는 것이다. -->
	<meta lang="ko">
    <!-- 인터넷화면에서 위쪽 툴바에 보여지는 이름 -->
	<title>introduce | kkw</title>
        <link
	    href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&family=Noto+Sans+KR:wght@700&display=swap"
	    rel="stylesheet">
	    <link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="/web/css/init.css" rel="stylesheet" type="text/css">
        <link href="/web/css/Header.css" rel="stylesheet" type="text/css">
		<link href="/web/css/Footer.css" rel="stylesheet" type="text/css">
		<link href="/web/css/Homemain.css" rel="stylesheet" type="text/css">
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
				<div class="Box"></div>
				<div style="width: 1000px; height: 500px;">
				<div style="width: 500px; height: 500px;float: left;">
					<div class="picturebox"></div>
					<div class="maintext"><p>26세 개구쟁이의 개발자 도전기<br>2021.02.04 ~ ing</p></div>
				</div>
				<div style="width: 500px; height: 250px; float: left;">
				<div class="namebox"><h1>김건우 <span> kimkunwoo</span></h1></div>
				<div class="maintextbox">
					<div>
						<p>Solving One Problem Daily<br>Well done is better than well said.</p>
					</div>
				</div>
				</div>
				<div class="maintechbox_1">
					<h3>🛠 technology i have used 🛠</h3></p>
					<br>
					<div class="maintechbox_2">
						<div class="techimage"><img src="/web/css/tech-icons/gitimage.png" alt="Git"><div>Git</div></div>
						<div class="techimage"><img src="/web/css/tech-icons/javascriptimage.png" alt="Javascript"><div>Javascript</div></div>
						<div class="techimage"><img src="/web/css/tech-icons/oracleimage.png" alt="Oracle"><div>Oracle</div></div>
						<div class="techimage"><img src="/web/css/tech-icons/pythonimage.png" alt="Python"><div>Python</div></div>
						<div class="techimage"><img src="/web/css/tech-icons/solutionimage.png" alt="solution"><div>Solution</div></div>
						<div class="techimage"><img src="/web/css/tech-icons/springimage.png" alt="spring"><div>Spring</div></div>
						<div class="techimage"><img src="/web/css/tech-icons/javaimage.png" alt="java"><div>Java</div></div>
						<div class="techimage"><img src="/web/css/tech-icons/html5image.png" alt="html5"><div>Html5</div></div>
						<div class="techimage"><img src="/web/css/tech-icons/css3image.png" alt="css3"><div>Css3</div></div>
						<div class="techimage"><img src="/web/css/tech-icons/Bootstrapimage.png" alt="Bootstrap"><div>Bootstriap</div></div>
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