<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/myinfo.css">
<title>Insert title here</title>
<script>
var start_year = "2020";
// 시작할 년도 
var today = new Date(); 
var today_year= today.getFullYear(); 
var index=0; 
for(var y=start_year; y<=today_year; y++){ 
	//start_year ~ 현재 년도 
	document.getElementById('select_year').options[index] = new Option(y, y); index++; } index=0; 
	for(var m=1; m<=12; m++){ document.getElementById('select_month').options[index] = new Option(m, m); index++; } lastday(); 
	function lastday(){ 
		//년과 월에 따라 마지막 일 구하기 
		var Year=document.getElementById('select_year').value; 
		var Month=document.getElementById('select_month').value; 
		var day=new Date(new Date(Year,Month,1)-86400000).getDate(); 
		var dayindex_len=document.getElementById('select_day').length;
		if(day>dayindex_len){ 
			for(var i=(dayindex_len+1); i<=day; i++){ 
				document.getElementById('select_day').options[i-1] = new Option(i, i);
				} 
		} else if(day<dayindex_len){ 
			for(var i=dayindex_len; i>=day; i--){ 
				document.getElementById('select_day').options[i]=null; 
				} 
			} 
		}
</script>

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
		<select id="year" name="myyear">
              <c:forEach var="i" begin="2020" end="2030" step="1" >
                  <option value="myyear" <c:if test="${i == (now.year + 1900)}">selected</c:if> >${i}</option>
               </c:forEach>
           </select>년
         
      <select id="select_month" onchange="javascript:lastday();" name="mymonth">
                     <c:forEach var="i" begin="1" end="12" step="1">
                     <c:if test="${i < 10}"> 
                     <option value="mymonth" selected="selected">0${i}</option>
                     </c:if>
                     <c:if test="${i >=10 }">
                     <option value="mymonth">${i}</option>
                     </c:if>
                     </c:forEach>
               </select>월   
                  
           <select name="myday" >
         <c:forEach begin="1" end="31" var="day">
            <c:if test="${day<10}"><option value="myday">0${day}</option></c:if>
          <c:if test="${day>9}"><option value="myday">${day}</option></c:if>
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