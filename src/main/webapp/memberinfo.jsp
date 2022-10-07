<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String sessionId= (String) session.getAttribute("memberid");
		if(sessionId == null){
	%>
		<a href="logon.jsp">로그인</a>
	<%
		} else{
	%>
	
		<%=sessionId %>님
	<%
		}
	%>
	
	
</body>
</html>