<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	//scriptlet(스크립트 릿) -> 자바코드 넣는다
	//입력한 id 받아준다
	String id = request.getParameter("id2");
	//원래 관리자 모드 로그인 id가 admin이라고 가정!
	String managerId = "admin";
	
	if(managerId.equals(id)){
		out.print("관리자 모드로 로그인 했습니다");
	}
	else{
		out.print("관리자 모드로 로그인 하지 못했습니다");
	}
%>
</body>
</html>