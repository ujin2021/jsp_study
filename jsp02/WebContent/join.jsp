<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!-- out.print��� ����(ǥ����) -->
<!-- ���߰��� ������ �迭�� �޴´� (checkbox) -->
<!-- hobby, result : RAM�� ����. ���ϱ� : cpu�� ����. ���� �ٽ� result������ ����������� -->
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String com = request.getParameter("com");
	String tel = request.getParameter("tel");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String word = request.getParameter("word");
	
	String tel1 = tel.substring(0, 4);
	String tel2 = tel.substring(4);
	
	String result = "";
	if(hobby != null){
		for(int i = 0; i < hobby.length; i++){
			result += hobby[i];
			result += " ";
		}
	}
	else{
		result = "no hobby";
	}
%>
<h3>ȸ������ Ȯ��</h3>
<hr color="pink">
�Է��� id : <%= id %><br>
�Է��� pw : <%= pw %><br>
�Է��� name : <%= name %><br>
�Է��� ����ó : <%= com %>-<%= tel1 %>-<%= tel2 %><br>
�Է��� ���� : <%= gender %><br>
�Է��� ��� : <%= result %><br>
�ϰ� ���� �� : <%= word %><br>
</body>
</html>