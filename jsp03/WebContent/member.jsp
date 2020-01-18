<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- css외부파일 or style text or id(하나만 딱 바꾸고 싶을때) -->
<link type="text/css" rel="stylesheet" href="out2.css">
<style type="text/css">
	/* class 선택 -> style 정의 , class 지정or tag이름*/
	/* event처리할땐 : 사용, hover:마우스올렸을때 */
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
			<td class="c2">항목</td>
			<td class="c2">입력</td>
		</tr>
		<tr>
			<td class="c1" id="i1">번호</td>
			<td>
				<input type="text" name="no">
			</td>
		</tr>
		<tr>
			<td class="c1">제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td class="c1">내용</td>
			<td><input type="text" name="content"></td>
		</tr>
		<tr>
			<td class="c1">작성자</td>
			<td><input type="text" name="writer"></td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="button">글쓰기 완료</button>
			</td>
		</tr>
	</table>
</body>
</html>