<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>쇼핑몰 물건 등록 확인</h3>
<hr color="pink">
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String about = request.getParameter("about");
	String sale = request.getParameter("sale");
	String[] price = request.getParameterValues("price");
	String notice = request.getParameter("notice");
	
	String result="";
	if(price != null){
		for(int i = 0; i < price.length; i++){
			result += price[i];
			result += " ";
		}
	}
	else
		result = "nothing";
%>
물건 id : <%= id %><br>
물건 이름 : <%= name %><br>
물건 내용 : <%= about %><br>
할인 여부 : <%= sale %><br>
가격 종류 : <%= result %><br>
선택사항 : <%= notice %><br>
</body>
</html>