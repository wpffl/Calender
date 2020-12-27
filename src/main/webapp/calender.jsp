<%@page import="org.springframework.jca.cci.core.InteractionCallback"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "com.gukje.sch.schfunction.util" %>
<%@page import= "java.util.Calendar" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/calendar.css">

<style type="text/css"> 
	a { text-decoration:none } 
	a:visited { color: #007db3; text-decoration: none; }
</style>

<title>달력 게시판</title>

</head>
<body>
<div align="center">
<button type="submit" id="insert" onclick="location.href='insert.jsp'">일정등록</button>
<button type="submit" id="myinfo" onclick="location.href='myinfo.jsp'">회원수정</button>
<button type="submit" id="c_logout" onclick="location.href='logout.do'">로그아웃</button>
<h1 id="text">Everyone's Calendar</h1>

	<table id="calendar">
		<caption id="text1">
			<a href="./calender.do?year=${c.year-1}&month=${c.month-1}"><span id="t3">◁</span></a>
				<span class="y">${c.year}</span><span id="t1">년</span>
			<a href="./calender.do?year=${c.year+1}&month=${c.month}"><span id="t4">▷</span></a>
			<br>
			<a href="./calender.do?year=${c.year}&month=${c.month-1}">◁</a>
				<span class="m">${c.month}</span><span id="t2">월</span>
			<a href="./calender.do?year=${c.year}&month=${c.month+1}">▷</a>
		</caption>
		<tr>
			<th id="sun">일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th id="sat">토</th>
		</tr>
		<tr>
			<c:forEach begin="0" end="${c.dayOfWeek-2}" step="1">
			<td>&nbsp;</td>
			</c:forEach>
			
			<c:forEach var="i" begin="1" end="${c.lastDay}" step="1">
				<td><a href="./content.do?year=${c.year}&month=${c.month}&day=${i}"><c:out value="${i}"></c:out></a></td>
				<c:if test="${(c.dayOfWeek-1+i)%7==0}">
				</tr><tr>
				</c:if>
			</c:forEach>
			
			<c:forEach begin="0" end="${(7-(c.dayOfWeek+c.lastDay)%7)%7}" step="1">
			<td>&nbsp;</td>
			</c:forEach>
			
		</tr>
	</table>
  </div>	

</body>
</html> 