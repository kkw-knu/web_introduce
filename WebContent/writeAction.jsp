<% request.setCharacterEncoding("UTF-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="info.InfoDAO"%>
<%@ page import="info.Info"%>
<%@ page import="java.io.PrintWriter"%>
<jsp:useBean id="info" class="info.Info" scope="page"/>
<jsp:setProperty name="info" property="infoTitle"/>
<jsp:setProperty name="info" property="infoContent"/>
<jsp:setProperty name="info" property="userID"/>
<jsp:setProperty name="info" property="userPW"/>
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
	<body>
	<%
	//하나의 입력값이라도 null값이 입력되었을 때
	if(info.getInfoTitle()==null||info.getInfoContent()==null||info.getUserID()==null||info.getUserPW()==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('모두 입력해주세요.')");
		script.println("history.back()");
		script.println("</script>");
	}else{
		InfoDAO infoDAO = new InfoDAO();
		int result = infoDAO.write(info.getInfoTitle(), info.getInfoContent(), info.getUserID(), info.getUserPW());
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패했습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글이 등록되었습니다.')");
			script.println("</script>");
			response.sendRedirect("QnA.jsp");
		}
	}
	%>
	</body>
</html>