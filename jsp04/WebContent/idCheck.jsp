<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String[] ids = {"admin", "root", "apple", "banana"};
	String result = "��� ������ ���̵� �Դϴ�.";
	for(String x : ids){ //for each ��
		if(x.equals(id)){
			result = "�̹� ������� ���̵� �Դϴ�.";
			break;
		}
	}
%>
<%= result%>