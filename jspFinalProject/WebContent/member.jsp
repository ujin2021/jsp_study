<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Shopping mall</title>
<link type="text/css" rel="stylesheet" href="css/project.css">
</head>
<body>
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">��ٱ��� ���� �κ�</div>
	<div id="center">
	<br>
	<!-- �α��� ���� -->
	<%
		String id = (String)session.getAttribute("id");
		if(id == null){
			out.print("�α��� ���� �ʾҽ��ϴ�.");
	%>
	<form action="login.jsp">
		���̵� : <input type="text" name="id">
		�н����� : <input type="text" name="pw">
		<button type="submit">�α���</button>
	</form>
	<%		
		}
		else{
			out.print(id + "�� �α��� �Ǿ����ϴ�");
	%>
	<a href="logout.jsp">�α׾ƿ�</a>
	<%
		}
	%>
	<br>
	<hr>
	<br>
	<!-- ȸ������ ���� -->
	<form action="insert1.jsp">
		<table>
			<tr>
				<td>���̵�</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>�н�����</td>
				<td><input type="text" name="pw"></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">ȸ������</button></td>
			</tr>
		</table>
	</form>
	</div>
</div>
</body>
</html>