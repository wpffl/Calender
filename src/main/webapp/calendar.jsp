<%@page import="org.springframework.jca.cci.core.InteractionCallback"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "com.gukje.sch.schfunction.util" %>
<%@page import= "java.util.Calendar" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
	//현재 날짜의 연도와 월을 가져 옴
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH)+1;
	
	// 값을 전송받는 것이 필요
	String paramYear = request.getParameter("year");
	String paramMonth = request.getParameter("month");
	
	//두번째 호출 페이지에서 요청된 연도와 월의 값을 저장한다.
	if(paramYear !=null){
		year = Integer.parseInt(paramYear);			
	}
	
	if(paramMonth !=null){
		month = Integer.parseInt(paramMonth);
	}
	
	if(month>12){
		month=1;
		year++;
	}
	if(month<1){
		month = 12;
		year--;
	}
	
	//요청받은 연도와 월의 일자로 달력클래스 세팅
	cal.set(year, month-1, 1);
	
	//매월 1일의 요일
	int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
	//월의 최대 일 수
	int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	
	String	yyyymm = year + util.two(String.valueOf(month));
	 %>
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
<button type="submit" id="modify_user" onclick="location.href='modify_user.jsp'">회원수정</button>
<button type="submit" id="c_logout" onclick="location.href='logout.do'">로그아웃</button>
<h1>일정관리 게시판</h1>

	
	<table id="calendar">
		<caption>
			<a href="./calendar.jsp?year=<%=year-1%>&month=<%=month-1%>">이전 년도</a>
			&nbsp;
			<a href="./calendar.jsp?year=<%=year%>&month=<%=month-1%>">이전 월</a>
				<span class="y"><%=year%></span>년도
				<span class="m"><%=month%></span>월
			<a href="./calendar.jsp?year=<%=year%>&month=<%=month+1%>">다음 월</a>
			&nbsp;
			<a href="./calendar.jsp?year=<%=year+1%>&month=<%=month%>">다음 년도</a>
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
		
		<!-- 시작공백 -->
		<c:forEach  var="i" begin="0" end="${dayOfWeek-2}" step="1" >
		out.print("<td>&nbsp;</td>");
		</c:forEach>
		<!-- 달력일수 -->
		<c:forEach var="i" begin="1" end="${lastDay}" step="1" >
				<td>
					<a href="content.jsp"><c:out value="${i}" /></a>
				</td>
			<c:if test="${dayOfWeek-1+i)%7==0}">
				</tr><tr>
				</c:if>
				</c:forEach>
				
			<!-- 끝 공백 -->
			<c:forEach var="i" begin="0" end="${7-(dayOfWeek-2+lastDay)%7)%7}" step="1">
				out.print("<td>&nbsp;</td>");	
			</c:forEach>
		</tr>
	</table>
</div>

</body>
</html>