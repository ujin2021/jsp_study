<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!-- out.print대신 쓴다(표현식) -->
<!-- 다중값을 받을때 배열로 받는다 (checkbox) -->
<!-- hobby, result : RAM에 저장. 더하기 : cpu가 수행. 따라서 다시 result변수에 저장해줘야함 -->
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String com = request.getParameter("com");
	String tel = request.getParameter("tel");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String word = request.getParameter("word");
	
	String tel1 = tel.substring(0, 4);
	String tel2 = tel.substring(4);
	
	String result = "";
	if(hobby != null){
		for(int i = 0; i < hobby.length; i++){
			result += hobby[i];
			result += " ";
		}
	}
	else{
		result = "no hobby";
	}
%>
<h3>회원가입 확인</h3>
<hr color="pink">
입력한 id : <%= id %><br>
입력한 pw : <%= pw %><br>
입력한 name : <%= name %><br>
입력한 연락처 : <%= com %>-<%= tel1 %>-<%= tel2 %><br>
입력힌 성별 : <%= gender %><br>
입력한 취미 : <%= result %><br>
하고 싶은 말 : <%= word %><br>
</body>
</html>