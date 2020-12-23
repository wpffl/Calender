<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/join.css">
<script type="text/javascript">
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
<!-- 
function checkValue()
{	

	var form =document.f1;
	
	if(!form.id.value){
		alert("아이디를 입력하세요.");
		return false;
	}
	
	if(form.idDuplication.value !="idCheck"){
		alert("아이디 중복체크를 해주세요.")
		return false;
	}
	
	if(!form.pwd.value){
		alert("비밀번호를 입력하세요.")
		return false;
	}
	if(form.pwd.valye !=form.pwdcheck.value){
		alert("비밀번호가 일치하지 않습니다.")
		return false;
	}
	
	if(!form.name.value){
		alert("이름을 입력하세요.")
		return false;	
	}
	if(!form.email.value){
		alert("이메일을 입력하세요.")
		return false;	
	}
	if(!form.phone.value){
		alert("전화번호를 입력하세요.");
		return false;
	}
	
	if(form.email.value !="@"){
		alert("이메일은 @를 포함해야합니다.")
		return false;
	}
}
-->	
	//function openIdChk(){
		
		//window.name = "parentForm";
		//window.open("member/IdCheckForm.jsp",
			//	"chkForm", "width=500, height=300, resizable = no, scrollbars = no");	
	//}
	
	function inputIdChk(){
		document.f1.idDuplication.value ="idUncheck";
	}
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center" id="outline">
<h1 id=join_font>회원가입</h1>
<div id="table1">
<form method="post" name="f1" 
action="join.do" onsubmit="return checkValue()">
	<table>
		<tr>
			<td id="text0">아이디</td>
		</tr>
		<tr>
			<td>
			<input type="text" name="id" onkeydown="inputIdChl()" >
			<!-- <input type="button" value="중복확인" id="j_btn_1" onclick="openIdChk()">
			<input type="hidden" name="idDuplication" value="idUncheck"> -->
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
			<td id="text1">이름</td>
		</tr>
		<tr>
			<td><input type="text" name="name" ></td>
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
		
			<select id="select_year" onchange="javascript:lastday();" name="birthy">
			   <c:forEach var="i" begin="1900" end="2020" step="1" >
			       <option value="birthy" <c:if test="${i == (now.year + 1900)}">${i}</c:if> >${i}</option>
			   </c:forEach>
			</select><font id=text3>년</font>
	
	         <select id="select_month" onchange="javascript:lastday();" name="birthm">
										<c:forEach var="i" begin="1" end="12" step="1">
							<c:if test="${i < 10}"> 
							<option value="birthm" selected="selected">0${i}</option>
							</c:if>
							<c:if test="${i >=10 }">
							<option value="birthm">${i}</option>
							</c:if>
							</c:forEach>
	         </select><font id=text3>월</font>   
	         
	         <select id="select_day" name="birthd" >
		         <c:forEach begin="1" end="31" var="day">
		         	<c:if test="${day<10}"><option value="birthd">0${day}</option></c:if>
				    <c:if test="${day>9}"><option value="birthd">${day}</option></c:if>
				 </c:forEach>
	         </select><font id=text3>일 </font>
		</td>
		</tr>
		 
		 <tr>
			 <td id="text2">전화번호</td>
		 </tr>
		 <tr>
			 <td>
			 	  <input size=3 type="text" name="ph1" max="3">
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
		<br><br><br>
		<!--<input type=submit  value="등록">-->

	  <input type="submit" id="j_btn_1" value="가입하기" /> 
	<input type="button" id="j_btn_1" value="취소" onclick="location.href='calender.jsp'">
	<br><br>
	</form>
	
	
</div>
</div>
</body>
</html>