<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String tel = request.getParameter("tel");
	String company = tel.substring(0, 3); //010, 011 추출..
	String s1 = null;
	switch(company){
		case("010") :
			s1 = "1111";
			break;
		case("011") :
			s1 = "2222";
			break;
		case("017") :
			s1 = "3333";
			break;
		default :
			s1 = "4444";
	}
	
	String[] s = {"ab", "bc", "cd", "de"};
	//ctrl+shift+m ->import 안된곳 위에 커서 넣고
	Random r = new Random();
	int idx = r.nextInt(4); //0~3 random value
	String s2 = s[idx];
	
%>
<%= s1 + s2 %>