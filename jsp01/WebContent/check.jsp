<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- page������(java�ڵ�� �ٲ�!-��Ĺ���� ����) -->
    <!-- jsp������ page�����ڸ� �ݵ�� ������ �Ѵ� -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- java code �������� �� �ִ�. -->
<!-- ó���� �κи� �ڹ��ڵ�� ���� ����� ���� -->
<!-- %�ȿ� java code�� ����ȴ�.  -->
<!-- �������α׷� : ��(let) -->
<%
/* 
��ũ��Ʈ�� => java code �ִ� �κ�
tomcat�� �̸� ���ֻ���ϴ� class �� ���� ��ü�� ����� ����.(��Ʈ�� ��ü, ����� ��ü)
1. server���� �޾������ => request(����� ��ü ���)
2. db���� id/pw�� ��ġ�ϴ��� Ȯ�� ó�� => ���� �Է��� �Ͱ� db�� �ִ� �����Ϳ� ��ġ ����(���ǹ�)
3. ó�� ����� �˷��־�� �� => html
*/

//1
String id = request.getParameter("id");
String pw = request.getParameter("pw");
//(���� db���� �������ϱ�..)
String dbId = "root";
String dbPw = "1234";

//2, 3(html�� ���� : out ���)
if(dbId.equals(id) && dbPw.equals(pw)){
	out.print("<h3>login ok</h3>");
}
else {
	out.print("<h3>login not</h3>");
}

%>
</body>
</html>