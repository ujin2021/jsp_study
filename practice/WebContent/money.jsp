<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String money = request.getParameter("money");
	String payment = request.getParameter("payment");
	
	switch(payment){
		case "1":
			out.print("������ü ����/����ok");
			break;
		case "2":
			out.print("�ſ�ī�� ����/����ok");
			break;
		case "3":
			out.print("�޴��� ���� ����/����ok");
			break;
		default :
			out.print("���� ���");
	}
%>
<%= money%>��