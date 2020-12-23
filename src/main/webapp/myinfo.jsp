<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/myinfo.css">
<title>Insert title here</title>
</head>
<body>
<div align="center" id="outline">
<div id="table0">
<h1>회원수정</h1>
<form action="myinfo.do">
<input type="hidden" name="id" value="${id}"> 
	<table id="table1">
		<tr>
			<td id=text0>비밀번호</td>
		</tr>
		<tr>
			<td>
				<input type="password" name="pwd" >
			</td>
		</tr>
		
		<tr>
			<td id=text>비밀번호 확인</td>
		</tr>
		<tr>
			<td><input type="password" name="pwdcheck"></td>
		</tr>
			<tr>
			<td id=text>닉네임</td>
		</tr>
		<tr>
			<td><input type="text" name="nickname" value="%{nickname}"></td>
		</tr>
		<tr>
			<td id=text>생일</td>
		</tr>
		<tr>
		<td>
		
			<select id="year" name="year">
			   <c:forEach var="i" begin="1900" end="2020" step="1" >
			       <option selected="${user.year}" value="${i}" <c:if test="${i == (now.year + 1900)}">${i}</c:if> >${i}</option>
						   
			   </c:forEach>
			</select>년
	
	        <select name="month">
	         <% 
	         	for(int i=1; i<13; i++){
	         	if(i<10){%>
	            <option selected="${user.month}">0<%=i%></option><%}
	         	else{%>
	         	<option selected="${user.month}"><%=i%></option>
	         	<%
	         	}}
	         	%>
	         </select>월   
	         
	         <select name="day" >
		         <c:forEach begin="1" end="31" var="day">
		         	<c:if test="${day<10}"><option selected="${user.day}">0${day}</option></c:if>
				    <c:if test="${day>9}"><option selected="${user.day}">${day}</option></c:if>
				 </c:forEach>
	         </select>일 
		</td>
		</tr>
		 
		 <tr>
			 <td id=text>전화번호</td>
		 </tr>
		 <tr>
			 <td>
			 	 <input size=3 type="text" name="ph1" value="${user.ph1}">
			 	 -<input size=4 type="text" name="ph2" value="${user.ph2}">
			 	 -<input size=4 type="text" name="ph3" value="${user.ph3}">
			 </td>
		 </tr>
		 
		 <tr>
			 <td id=text>이메일</td>
		 </tr>
		 <tr>
			 <td><input type="text" name="email" value="${user.email}"></td>
		 </tr>	
		</table>
	</form>
	<br>
	<input id="is" type="submit" value="수정완료">
</div>
</div>
</body>
</html>