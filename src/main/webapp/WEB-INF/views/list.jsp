<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

    <h1>전화번호부</h1>

    <h2>리스트</h2>

    <p>등록된 전화번호 리스트입니다.</p>

    <table border="1">
        <tr>
            <th>이름(name)</th>
            <th>핸드폰(hp)</th>
            <th>회사(company)</th>
            <th>관리</th>
        </tr>
        <c:forEach items="${requestScope.personList}" var="phonebookVo">
            <tr>
                <td>${phonebookVo.name}</td>
                <td>${phonebookVo.hp}</td>
                <td>${phonebookVo.company}</td>
                <td>
                   <a href="/phonebookTest/delete?no=${phonebookVo.personId}"> <button>삭제하기</button></a>
                    <a href="/phonebookTest/editform?no=${phonebookVo.personId}">[수정폼이동]</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    
    <br>
    <a href="/phonebookTest/writeform">등록폼 이동</a>

</body>
</html>