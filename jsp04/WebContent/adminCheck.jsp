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
	//scriptlet(��ũ��Ʈ ��) -> �ڹ��ڵ� �ִ´�
	//�Է��� id �޾��ش�
	String id = request.getParameter("id2");
	//���� ������ ��� �α��� id�� admin�̶�� ����!
	String managerId = "admin";
	
	if(managerId.equals(id)){
		out.print("������ ���� �α��� �߽��ϴ�");
	}
	else{
		out.print("������ ���� �α��� ���� ���߽��ϴ�");
	}
%>
</body>
</html>