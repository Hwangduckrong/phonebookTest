<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>

	<h2>전화번호-수정폼</h2>

	<p>수정할 항목을 입력한 후 수정버튼을 클릭해 주세요</p>

	<form action="/phonebookTest/edit" method="get">
		<div>
			<label for="txt-name">이름(name):</label> 
			<input id="txt-name" type="text" name="name" value="${personVo.name}" placeholder="이름">
		</div>

		<div>
			<label for="txt-hp">핸드폰(hp):</label> 
			<input id="txt-hp" type="text" name="hp" value="${personVo.hp}" placeholder="핸드폰">
		</div>

		<div>
			<label for="txt-company">회사(company):</label> 
			<input id="txt-company" type="text" name="company" value="${personVo.company}" placeholder="회사">
		</div>

		<input type="hidden" name="personId" value="${personVo.personId}"> 
		<button type="submit">수정(전송)</button>
	</form>

	<br>
	<br>
	<a href="/phonebookTest/list">리스트로 가기</a>


</body>
</html>