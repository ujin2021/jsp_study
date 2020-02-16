<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	ArrayList list = (ArrayList)session.getAttribute("bag");
	if(list != null){
%>
장바구니 물건 개수 : <%=list.size() %> 개
<% 
	}
	//장바구니에 추가하면 - 총합계 + 리스트(물건사진,가격,이름) 나오도록
%>