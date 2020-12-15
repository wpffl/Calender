<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align=center>

			<table border=1 width=200>
				<tr>
					<td>닉네임</td>
				</tr>
				<c:forEach items="${list}" var="user">
				<tr>
					<td>${user.nickname}</td>
				</tr>
				</c:forEach>
			</table>
			<form action="userlist.jsp">
		<input placeholder="닉네임을 검색하세요" type="text" name="serach">
		<button type="submit">검색</button>
		</form>
	</div>
</body>
</html>