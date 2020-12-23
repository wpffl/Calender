<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/modify.css">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<form action="content.jsp">
<<input type="hidden" name="nickname" value="${m.nickname}">
<h1>일정 수정</h1>
<table class="type05">

<tr>
	<th id=text>제목</th>
	<td><input type="text" name="title" value="${m.title}"></td>
</tr>


<tr>
	<th id=text1>일시</th>
	<td>
		<select id="year" name="year">
           	<c:forEach var="i" begin="2000" end="2030" step="1" >
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
	<th id=text1>공개여부</th>
	<td>
		<input type="checkbox" name="locker" value="1" checked>공개
		<input type="checkbox" name="locker" value="2">비공개
	</td>
</tr>

<tr>
	<th id=text1>설명</th>
	<td><textarea name="content" rows="10" cols="30"></textarea></td>
	<!-- textarea 값 넘겨받는 방법 찾는중 placeholder="<?=$content?>" -->
</tr>

</table>
</form>
<br><input type="submit" value="일정등록">
</div>
</body>
</html>