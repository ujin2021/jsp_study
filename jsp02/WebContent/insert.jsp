<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 1.�Ѿ�� �����͸� �޾��־�� ��. -->
<%
//java code�ִ� �κ�
//��ũ��Ʈ��
	//�޾��ִ� ��ǰ(class) �� ������ ���� : request
	//built in ��ü(����� ��ü)
	//getParameter ���� ���ڴ� html������ name���� ���ƾ���
	String id = request.getParameter("id"); //root
	String pw = request.getParameter("pw"); //1234
	String name = request.getParameter("name"); //peng
	String tel = request.getParameter("tel"); //1212
%>
<!-- 2.dbó�� -->

<!-- 3.ȸ������ó�� �ߵǾ����� �˷������ -->
<%
	//��� ���尴ü : out
	out.print("ȸ�� ���� ó���� �Ϸ�Ǿ����ϴ�<hr>");
	out.print("id : " + id + "<br>");
	out.print("pw : " + pw + "<br>");
	out.print("name : " + name + "<br>");
	out.print("tel : " + tel + "<br>");
%>
</body>
</html>