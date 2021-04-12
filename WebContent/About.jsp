
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
<meta name="Keyword"
	content="웹개발, 프론트엔드, 백엔드, 김건우, 거누, html, css, java, javascript, tomcat">
<!-- 문서의 저자 이름 -->
<meta name="author" content="kim kun woo">
<!-- 어떤 언어로 이루어진 웹페이지인지를 지정하는 속성 지금같은 경우는 한글이라고 나타내는 것이다. -->
<meta lang="ko">
<!-- 인터넷화면에서 위쪽 툴바에 보여지는 이름 -->
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
<link href="css/Aboutmain.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="icon" href="css/tech-icons/favicon.png">
<script src="https://kit.fontawesome.com/012d5a0fd2.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div>
		<header class="NavBar">
			<nav>
				<span class="menuBar"><a href="index.jsp">HOME</a></span> <span
					class="menuBar"><a href="About.jsp">ABOUT</a></span> <span
					class="menuBar"><a href="Skill.jsp">SKILL</a></span> <span
					class="menuBar"><a href="QnA.jsp">QnA</a></span> <span
					class="menuBarimg"></span>
			</nav>
		</header>
		<main>
			<div class="Box"></div>
			<div>
				<h2 class="abouttitle">저는요!</h2>

				<h2 class="abouttitle">
					알고리즘 문제의 개념과 풀이 <small>배우고 있지만 자신있습니다.</small>
				</h2>
				<ul class="superlist">
					<li>제 능력중 가장 <b>뛰어난</b> 부분이라고 생각합니다.
					</li>
					<ui class="childlist">
					<li>자료구조를 이해하고 있습니다.</li>
					<li>상황에 맞는 풀이법을 찾을 수 있습니다.</li>
					</ui>
					<li><b>하루에 한 문제</b>이상을 목표로 풀고있습니다.</li>
					<li><b>스스로</b> 해결하기위해 <b>노력하는 방법</b>과 <b>끈기</b>를 배웠습니다.</li>
					<ul class="childlist">
						<li>한문제를 풀기위해 몇시간 또는 며칠씩 고민합니다.</li>
					</ul>
					<li><b>프로그래밍의 재미</b>를 일깨워준 부분입니다.</li>
					<ul class="childlist">
						<li>문제를 해결한 순간의 쾌감이 원동력이라 생각합니다.</li>
					</ul>
					<li><b>C언어</b>를 주로 사용했지만 이제는<b> JAVA</b>가 주언어가 됐습니다.</li>
				</ul>
				<div class="maintechbox_2">
					<div class="techimage"
						onclick="location='iconjsp/pythonjsp.jsp'">
						<img src="css/tech-icons/pythonimage.png" alt="Python">
						<div>Python</div>
					</div>
					<div class="techimage"
						onclick="location='iconjsp/solutionjsp.jsp'">
						<img src="css/tech-icons/solutionimage.png" alt="solution">
						<div>Solution</div>
					</div>
					<div class="techimage"
						onclick="location='iconjsp/javajsp.jsp'">
						<img src="css/tech-icons/javaimage.png" alt="java">
						<div>Java</div>
					</div>
					<div class="techimage" onclick="location='iconjsp/cjsp.jsp'">
						<img src="css/tech-icons/c_langimage.png" alt="C">
						<div>C</div>
					</div>
				</div>
				<h2 class="abouttitle">
					프론트엔드(Front End) 개발 <small>배워가고 있습니다.</small>
				</h2>
				<ul class="superlist">
					<li><b>재미</b>를 붙여가는 단계입니다.</li>
					<ul class="childlist">
						<li>재미있게 공부하는 것 이상의 공부법은 없다고 생각합니다.</li>
						<li>더욱 발전할 수 있습니다.</li>
					</ul>
					<li><b>화면구성</b>을 잘 할수 있습니다.</li>
					<li>꾸준한 알고리즘 공부로 Javascript작성이 오래걸리지 않습니다.</li>
					<li>이 홈페이지는 제 <b>첫 작품</b>입니다.
					</li>
					<ul class="childlist">
						<li>css를 더 이해하기 위해 bootstrap과 jquery를 사용하지 않았습니다.</li>
					</ul>
				</ul>
				<div class="maintechbox_2">
					<div class="techimage"
						onclick="location='iconjsp/javascriptjsp.jsp'">
						<img src="css/tech-icons/javascriptimage.png"
							alt="Javascript">
						<div>Javascript</div>
					</div>
					<div class="techimage"
						onclick="location='iconjsp/html5jsp.jsp'">
						<img src="css/tech-icons/html5image.png" alt="html5">
						<div>Html5</div>
					</div>
					<div class="techimage"
						onclick="location='iconjsp/css3jsp.jsp'">
						<img src="css/tech-icons/css3image.png" alt="css3">
						<div>Css3</div>
					</div>
					<div class="techimage"
						onclick="location='iconjsp/bootstrapjsp.jsp'">
						<img src="css/tech-icons/Bootstrapimage.png" alt="Bootstrap">
						<div>Bootstriap</div>
					</div>
				</div>
				<h2 class="abouttitle">
					백엔드(Back End) 개발 <small>배워가고 있습니다.</small>
				</h2>
				<ul class="superlist">
					<li><b>SQL</b>문으로 join을 사용하여 원하는 결과를 출력할 수 있습니다.</li>
					<li><b>JSP</b>와 <b>Spring</b>을 사용해봤습니다.</li>
					<ul class="childlist">
						<li>oracle과 연동할 수 있습니다.</li>
					</ul>
					<li><b>데이터모델링</b>을 이해하고 연습해봤습니다.</li>
					<ul class="childlist">
						<li>barker 표기법을 배웠습니다.</li>
						<li>DA# 프로그램으로 정규화를 연습해봤습니다.</li>
					</ul>
					<li><b>게시판</b>기능과 <b>login</b>기능을 구현해봤습니다.</li>
					<li>현재 <b>국비지원 프로그램</b>으로 학원에서 교육받고있습니다.
					</li>
				</ul>
				<div class="maintechbox_2">
					<div class="techimage"
						onclick="location='iconjsp/oraclejsp.jsp'">
						<img src="css/tech-icons/oracleimage.png" alt="Oracle">
						<div>Oracle</div>
					</div>
					<div class="techimage"
						onclick="location='iconjsp/springjsp.jsp'">
						<img src="css/tech-icons/springimage.png" alt="spring">
						<div>Spring</div>
					</div>
					<div class="techimage"
						onclick="location='iconjsp/javajsp.jsp'">
						<img src="css/tech-icons/javaimage.png" alt="java">
						<div>Java</div>
					</div>
				</div>
			</div>
		</main>
		<footer>
			<div class="Box"></div>
			<div class="bottomBar">
				<div class="bottomtext1">
					<p>CONTACT</p>
				</div>
				<div class="contactBar">
					<a href="https://github.com/kkw-knu"><i
						class="fab fa-github-square fa-2x"></i></a> <a
						href="https://www.instagram.com/_kunw00/"><i
						class="fab fa-instagram fa-2x"></i></a> <a
						href="https://blog.naver.com/rlarjsdn529"><i
						class="fas fa-blog fa-2x"></i></a>
				</div>
				<br>
				<div class="bottomtext2">
					<p>누구나 성공하는 방법을 알고있다.</p>
					<br>
					<p>다만 누구도 실천하지 않을 뿐이다.</p>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>