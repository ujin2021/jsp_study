<%@page import="java.util.ArrayList"%>
<%@page import="shop.MemberDTO"%>
<%@page import="shop.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ��ü ��� dao�� �̿��� dbó�� -->
<!-- dbó�� ����� list�� �޾ƿ;���.(��ȯ) -->
<%
	MemberDAO dao = new MemberDAO();
	ArrayList<MemberDTO> list = dao.list();
%>
ȸ�� ���� <%= list.size() %> �� �Դϴ�.
<hr color="blue">
<%
	for(int i = 0; i < list.size(); i++){
		MemberDTO dto2 = list.get(i);
%>
�˻��� id : <%= dto2.getId() %><br>
�˻��� pw : <%= dto2.getPw() %><br>
�˻��� name : <%= dto2.getName() %><br>
�˻��� tel : <%= dto2.getTel() %><br><br>
<%
	}
%>
</body>
</html>