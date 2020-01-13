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
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String tel1 = request.getParameter("tel1");
String tel2 = request.getParameter("tel2");
String tel3 = request.getParameter("tel3");
String[] category = request.getParameterValues("category");
String notion = request.getParameter("notion");

String tel = tel1 + "-" + tel2 + "-" + tel3;

String result = "";
if(category != null){
	for(int i = 0; i < category.length ; i++){
		result += category[i];	
		result += " ";
	}
}
else
	result = "nothing";
%>
<h3 style="color:#ba7b65;">회원가입 정보 확인</h3>
<hr color="#d4887d">
<b><font size="3" color="#ba7b65">ID : </font></b><%= id %><br>
<b><font size="3" color="#ba7b65">PW : </font></b><%= pw %><br>
<b><font size="3" color="#ba7b65">NAME : </font></b><%= name %><br>
<b><font size="3" color="#ba7b65">GENDER : </font></b><%= gender %><br>
<b><font size="3" color="#ba7b65">TEL : </font></b><%= tel %><br>
<b><font size="3" color="#ba7b65">CATEGORY : </font></b><%= result %><br>
<b><font size="3" color="#ba7b65">NOTION : </font></b><%= notion %><br>
<hr color="#d4887d">
<h4 style="color:#ba7b65;">회원가입이 완료되었습니다.</h4>
</body>
</html>