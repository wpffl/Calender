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


<title>달력 게시판</title>

</head>
<body>
<div align="center">
<button type="submit" id="insert" onclick="location.href='insert.jsp'">일정등록</button>
<button type="submit" id="myinfo" onclick="location.href='myinfo.jsp'">회원수정</button>
<button type="submit" id="c_logout" onclick="location.href='logout.do'">로그아웃</button>
<h1>일정관리 게시판</h1>

	<table id="calendar">
		<caption>
			<a href="./calender.do?year=${c.getYear()-1}&month=${c.getMonth()-1}">이전 년도</a>
			&nbsp;
			<a href="./calender.do?year=${c.getYear()}&month=${c.getMonth()-1}">이전 월</a>
				<span class="y">${c.getYear()}</span>년도
				<span class="m">${c.getMonth()}</span>월
			<a href="./calender.do?year=${c.getYear()}&month=${c.getMonth()+1}">다음 월</a>
			&nbsp;
			<a href="./calender.do?year=${c.getYear()+1}&month=${c.getMonth()}">다음 년도</a>
		</caption>
		<tr>
			<th>일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th>토</th>
		</tr>
		<tr>
		
		<%-- <!-- 시작공백 -->
			<c:forEach  var="i" begin="0" end="${c.DayOfWeek()-2}" step="1" >
				out.print("<td>&nbsp;</td>");
			</c:forEach>
		<!-- 달력일수 -->
			<c:forEach var="i" begin="1" end="${c.getLastDay()}" step="1">
					<td>
						<a href="content.jsp">
							<c:out value="${i}" />
						</a>
					</td>
				<c:if test="${c.DayOfWeek()-1+i)%7==0}">
					</tr><tr>
				</c:if>
			</c:forEach>
				
		<!-- 끝 공백 -->
			<c:forEach var="i" begin="0" end="${7-((c.DayOfWeek()-2)+c.LastDay())%7)%7}" step="1">
				out.print("<td>&nbsp;</td>");
			</c:forEach> --%>
		</tr>
	</table>
</div>

</body>
</html> 