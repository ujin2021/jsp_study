<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	//������ id�� ��ٱ��Ͽ� ��� �߰��ؾ���.(��ٱ��� ����Ʈ�� �������� ��Ƴ��´�)
	//1. ��ٱ��� ������ �ִ��� Ȯ��
	ArrayList list = (ArrayList)session.getAttribute("bag"); //casting
	
	//1-1. ��ٱ��� �������ִ� => �̹� ����Ʈ�� �ִ�  => �� list�� id�߰�
	if(list != null){
		list.add(id);
	}
	
	//1-2. ��ٱ��� ������ ���� => ����� ������ش� => ���θ��� ����Ʈ�� id�� �߰�	
	else{
		list = new ArrayList();
		list.add(id);
	}
	
	//2. �߰��� ��ϱ��� �ٽ� session���� �缳�� ������Ѵ�.
	session.setAttribute("bag", list);
	
	//��ٱ��� �������� ��ǰ���� ���´� => ��ٱ��� ����Ʈ�� ����� id�� ������ �˻��Ѱ��� ȭ�鿡 ����ش�.
%>