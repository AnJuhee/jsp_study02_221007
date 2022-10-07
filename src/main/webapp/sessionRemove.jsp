<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단일 세션 삭제</title>
</head>
<body>
	<%
		String s_id = (String) session.getAttribute("memberid");
		String s_pw = (String) session.getAttribute("memberpw");
		
		out.println("아이디(세션): "+s_id +"<br>");
		out.println("비밀번호(세션): "+s_pw +"<br>");
	%>
	<br>
	--단일 세션 삭제 후 결과 --<br><br>
	<%
		session.removeAttribute("memberpw");
	
		s_id = (String) session.getAttribute("memberid");
		s_pw = (String) session.getAttribute("memberpw");
		
		out.println("아이디(세션): "+s_id +"<br>");
		out.println("비밀번호(세션): "+s_pw +"<br>");
	%>
</body>
</html>