<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- css�ܺ����� or style text or id(�ϳ��� �� �ٲٰ� ������) -->
<link type="text/css" rel="stylesheet" href="out2.css">
<style type="text/css">
	/* class ���� -> style ���� , class ����or tag�̸�*/
	/* eventó���Ҷ� : ���, hover:���콺�÷����� */
	input{
		color: tomato;
		background: #ffe3e3;
	}
	.c1{
		background: white;
		color: #1f3b87;
	}
	.c2{
		background: #9eb8ff;
	}
	button {
		background: #9eb8ff;
		color: white;
	}
	button:hover {
		color: tomato;
		background: white;
		font-size: 20px;
		
	}
	#i1{
		font-style: italic;
	}
</style>
</head>
<body>
	<table style="border: 5px double; color: slateblue">
		<tr>
			<td class="c2">�׸�</td>
			<td class="c2">�Է�</td>
		</tr>
		<tr>
			<td class="c1" id="i1">��ȣ</td>
			<td>
				<input type="text" name="no">
			</td>
		</tr>
		<tr>
			<td class="c1">����</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td class="c1">����</td>
			<td><input type="text" name="content"></td>
		</tr>
		<tr>
			<td class="c1">�ۼ���</td>
			<td><input type="text" name="writer"></td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="button">�۾��� �Ϸ�</button>
			</td>
		</tr>
	</table>
</body>
</html>