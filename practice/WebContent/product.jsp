<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="basket.jsp">
	<!-- ��ٱ��ϸ����! -->
	<!-- 1. ��۴ٴ°� �����(2/5) -->
	<!-- 2. �α��θ����(db�����ؼ�)(2/6) -->
	<!-- 4. ����Ʈ�� ���̾ƿ� �����, ��� -->
	��ǰ���� :
	<select name="fruit">
		<option value="apple">apple(1000)</option>
		<option value="banana">banana(2000)</option>
		<option value="melon">melon(3000)</option>
		<option value="orange">orange(4000)</option>
	</select>
	�������� : 
	<select name="count">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>	
	</select><br>
	
	<input type="submit" value="��ٱ��ϴ��">
</form>
<a href="basket_list.jsp">��ٱ��� ��Ϻ���</a>
</body>
</html>