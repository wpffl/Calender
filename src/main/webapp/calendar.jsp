<%@page import="org.springframework.jca.cci.core.InteractionCallback"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "com.gukje.sch.schfunction.util" %>
<%@page import= "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력 게시판</title>
<style type="text/css">
	#calendar{
		border : 1px solid gray;
		border-collapse: collapse;
	}
	
	#calendar th{
		width : 80px;
		border : 1px solid gray;
	}
	
	#calendar td{
		width: 80px;
		height: 80px;
		border : 1px solid gray;
		text-align : left;
		vertical-align : top;
		position : relative; 
	}
	
</style>
</head>
<body>
<h1>일정관리 게시판</h1>
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
		<%
			//시작 공백
			for(int i=0; i<dayOfWeek-1;i++){
				out.print("<td>&nbsp;</td>");
			}
			//달력 일수
			for(int i=1; i<=lastDay;i++){
				%>
				<td>
					<%=i%>
				</td>
				<%
				if((dayOfWeek-1+i)%7==0){
					out.print("</tr><tr>");			
				}
			}	
			// 끝 공백
			for(int i=0; i< (7-(dayOfWeek-1+lastDay)%7)%7;i++){
				out.print("<td>&nbsp;</td>");	
			}
		%>
		</tr>
	</table>


</body>
</html>