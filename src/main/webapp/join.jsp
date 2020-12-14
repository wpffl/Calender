<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align=center>
<table border=1 width=500>
<tr>
<td>id</td><td><input type="text" name="id"></td>
</tr>
<tr>
<td>비밀번호</td><td><input type="password" name="pwd"></td>
</tr>
<tr>
<td>닉네임</td><td><input type="text" name="nickname"></td>
</tr>
<tr>
<td>생일</td>
<td>
<select id="year" name="year">
                    <c:forEach var="i" begin="1900" end="2020" step="1" >
                        <option value="${i}" <c:if test="${i == (now.year + 1900)}">${i}</c:if> >${i}</option>
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
<td>전화번호</td>
<td><input size=3 type="text" name="ph1">-<input size=4 type="text" name="ph2">-<input size=4 type="text" name="ph3"></td>
</tr>
<tr>
<td>이메일</td><td><input type="text" name="email"></td>
</tr>
</table>
</div>
</body>
</html>