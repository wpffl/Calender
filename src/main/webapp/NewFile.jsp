<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "java.util.Date" %>
    <%@page import="java.time.format.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% Date date = new Date();
	int year = date.getYear();
%>
<body>
	<div align=center>
		<table border=1 width=700>
			<tr>
				<td>닉네임</td><td>닉네임</td>
			</tr>
			<tr>
				<td>제목</td><td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>내용</td><td><textarea cols=50 rows=3 name="content" ></textarea></td>
			</tr>
			<tr>
				<td>날짜</td>
				<td>
				<select id="year" name="year">
                    <c:forEach var="i" begin="1900" end="2030" step="1" >
                        <option value="${i}" <c:if test="${i == (now.year + 1900)}">selected</c:if> >${i}</option>
                    </c:forEach>
         </select>년
				
				<select name="month">
         <% 
         	
         	for(int i=1; i<13; i++){
         	if(i<10){%>
            <option>0<%=i %></option><%}
         	else{%>
         	<option><%=i %></option>
         	<%
         	}}
         	%>
         </select>월          
         <select name="day" >
         <c:forEach begin="1" end="31" var="day">
         	<c:if test="${day<10}"><option>0${day}</option></c:if>
		    <c:if test="${day>9}"><option>${day}</option></c:if>
		 </c:forEach>
         </select>일
				</td>
				
			</tr>
			<tr>
				<td>시간</td>
				<td>
		<select>
		 <c:forEach begin="1" end="23" var="hour">
         	<c:if test="${hour<10}"><option>0${hour}</option></c:if>
		    <c:if test="${hour>9}"><option>${hour}</option></c:if>
		    <c:if test="${hour==23}"><option>00</option></c:if>
		 </c:forEach>
		</select>시
		<select>
		 <c:forEach begin="0" end="59" var="minute">
         	<c:if test="${minute<10}"><option>0${minute}</option></c:if>
		    <c:if test="${minute>9}"><option>${minute}</option></c:if>
		 </c:forEach>
		</select>분
				</td>
			</tr>
			<tr>
				<td colspan=2 align=center><input type="checkbox" name=1>공개 
				&nbsp;
				<input type="checkbox" name=2>비공개</td>
			</tr>
		</table>
	</div>
</body>
</html>