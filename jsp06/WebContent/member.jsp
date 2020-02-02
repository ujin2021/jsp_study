<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입 정보 입력</h3>
<hr color="red">
<form action="db.jsp">
	id : <input type="text" name="id"><br>
	password : <input type="text" name="pw"><br>
	name : <input type="text" name="name"><br>
	tel : <input type="text" name="tel"><br>
	<input type="submit" value="서버로 전송">
</form>
</body>
</html>