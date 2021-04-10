<% request.setCharacterEncoding("UTF-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="info.InfoDAO"%>
<%@ page import="info.Info"%>
<%@ page import="java.io.PrintWriter"%>
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
	}else{
			Info i = new InfoDAO().getInfo(infoID);
			if(!request.getParameter("userPW").equals(i.getUserPW())){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('비밀번호가 틀립니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else{	
				InfoDAO infoDAO = new InfoDAO();
				int result = infoDAO.delete(infoID);
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글 삭제에 실패했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}else{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글이 삭제되었습니다.')");
					script.println("</script>");
					response.sendRedirect("QnA.jsp");
				}
			}
		}
	%>
	</body>
</html>