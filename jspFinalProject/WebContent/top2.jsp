<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	ArrayList list = (ArrayList)session.getAttribute("bag");
	if(list != null){
%>
��ٱ��� ���� ���� : <%=list.size() %>��
<% 
	}
%>