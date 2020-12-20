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
		<form action="insert.jsp">
			<table border=1 width=500>
				<tr>
					<td>분류</td>
					<td>제목</td>
					<td>일정날짜</td>
					<td>일정시간</td>
					<td>등록날짜</td>
					<td>공개여부</td>
				</tr>
				<c:forEach items="${list}" var="c">
				<tr>
					<td>${c.type}</td>
					<td><a href="modify.do?nickname=${c.nickname}">${c.title}</a></td>
					<td>${c.year}년${c.month}월${c.day}일</td>	
					<td>${c.hour}시${c.minute}분</td>
					<td>${c.regdate}</td>
				<td>${c.locker}</td>
				</tr>
				</c:forEach>
				<tr>
					<td colspan=6 align=center><input type="submit" value="일정등록하기"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>