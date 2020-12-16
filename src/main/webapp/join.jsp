<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/join.css">


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center" id="outline">
<div id="table1">
<h2 id=join_font>회원가입</h2>
<form name="f1" action="login.do" onSubmit="functionK()">
	<table>
		<tr>
			<td id="text1">아이디</td>
		</tr>
		<tr>
			<td>
			<input type="text" name="id" >
			<button type="submit" id="j_btn_1" onclick="location.href='checked_pwd.do'">중복확인</button>
			</td>
		</tr>

		<tr>
			<td id="text1">비밀번호</td>
		</tr>
		<tr>
			<td>
				<input type="password" name="pwd" min="8">
			</td>
		</tr>
		
		<tr>
			<td id="text1">비밀번호 확인</td>
		</tr>
		<tr>
			<td><input type="password" name="pwdcheck" min="8"></td>
		</tr>

		<tr>
			<td id="text1">닉네임</td>
		</tr>
		<tr>
			<td><input type="text" name="nickname"></td>
		</tr>
		
		<tr>
			<td id="text1">생일</td>
		</tr>
		<tr>
		<td>
		
			<select id="year" name="year">
			   <c:forEach var="i" begin="1900" end="2020" step="1" >
			       <option value="${i}" <c:if test="${i == (now.year + 1900)}">${i}</c:if> >${i}</option>
			   </c:forEach>
			</select><font id=text3>년</font>
	
	        <select name="month">
	         <% 
	         	for(int i=1; i<13; i++){
	         	if(i<10){%>
	            <option>0<%=i%></option><%}
	         	else{%>
	         	<option><%=i%></option>
	         	<%
	         	}}
	         	%>
	         </select><font id=text3>월</font>   
	         
	         <select name="day" >
		         <c:forEach begin="1" end="31" var="day">
		         	<c:if test="${day<10}"><option>0${day}</option></c:if>
				    <c:if test="${day>9}"><option>${day}</option></c:if>
				 </c:forEach>
	         </select><font id=text3>일 </font>
		</td>
		</tr>
		 
		 <tr>
			 <td id="text2">전화번호</td>
		 </tr>
		 <tr>
			 <td>
			 	 <input  size=3 type="text" name="ph1" max="3">
			 	- <input size=4 type="text" name="ph2" max="4">
			 	- <input size=4 type="text" name="ph3" max="4">
			 </td>
		 </tr>
		 
		 <tr>
			 <td id="text1">이메일</td>
		 </tr>
		 <tr>
			 <td><input type="text" name="email"></td>
		 </tr>
		 
		</table>
	</form>
	<br><br>
	<button type="submit" id="j_btn_1" onclick="location.href='login.jsp'">가입완료</button>
</div>
</div>
</body>
</html>