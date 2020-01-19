<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String[] ids = {"admin", "root", "apple", "banana"};
	String result = "사용 가능한 아이디 입니다.";
	for(String x : ids){ //for each 문
		if(x.equals(id)){
			result = "이미 사용중인 아이디 입니다.";
			break;
		}
	}
%>
<%= result%>