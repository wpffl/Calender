<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/insert.css">
<title>Insert title here</title>
<script>
function box_check(bck){
    var obj = document.getElementsByName("public","private");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != bck){
            obj[i].checked = false;
        }
    }
}
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
<div align="center">
<form action="calendar.do">
<h1>일정 등록</h1>
<table class="type05">

<tr>
<th id="text">제목</th>
<td>
	<select name="type">
		<option value="officially">직장</option>
		<option value="personally" selected="selected">개인</option>
	</select>
	<input type="text" name="title">
	</td>
</tr>
	
	
<tr>
	<th id="text">닉네임</th>
	<td>${nickname}</td>
</tr>

<tr>
	<th id="text">일시</th>
	<td>
		<select id="year" name="startyear">
           	<c:forEach var="i" begin="2020" end="2030" step="1" >
               	<option value="${i}" <c:if test="${i == (now.year + 1900)}">selected</c:if> >${i}</option>
               </c:forEach>
        	</select>년
			
		<select id="select_month" onchange="javascript:lastday();" name="startmonth">
							<c:forEach var="i" begin="1" end="12" step="1">
							<c:if test="${i < 10}"> 
							<option selected="startmonth">0${i}</option>
							</c:if>
							<c:if test="${i >=10 }">
							<option selected="startmonth">${i}</option>
							</c:if>
							</c:forEach>
					</select>월   
        	       
        	<select name="startday" >
         <c:forEach begin="1" end="31" var="day">
         	<c:if test="${day<10}"><option>0${day}</option></c:if>
		    <c:if test="${day>9}"><option>${day}</option></c:if>
		 </c:forEach>
        	</select>일

		<select name="starthour">
			<c:forEach begin="1" end="23" var="hour">
			    <c:if test="${hour<10}"><option>0${hour}</option></c:if>
				<c:if test="${hour>9}"><option>${hour}</option></c:if>
				<c:if test="${hour==23}"><option>00</option></c:if>
			</c:forEach>
		</select>시
		
		<select name="startminute">
			<c:forEach begin="0" end="59" var="minute">
	        <c:if test="${minute<10}"><option>0${minute}</option></c:if>
			<c:if test="${minute>9}"><option>${minute}</option></c:if>
			</c:forEach>
		</select>분 ~ 

	<br>
	

		<select id="year" name="endyear">
           	<c:forEach var="i" begin="2020" end="2030" step="1" >
               	<option value="${i}" <c:if test="${i == (now.year + 1900)}">selected</c:if> >${i}</option>
               </c:forEach>
        	</select>년
			
		<select id="select_month" onchange="javascript:lastday();" name="endmonth">
							<c:forEach var="i" begin="1" end="12" step="1">
							<c:if test="${i < 10}"> 
							<option selected="endmonth">0${i}</option>
							</c:if>
							<c:if test="${i >=10 }">
							<option selected="endmonth">${i}</option>
							</c:if>
							</c:forEach>
					</select>월   
        	       
        	<select name="endday" >
         <c:forEach begin="1" end="31" var="day">
         	<c:if test="${day<10}"><option>0${day}</option></c:if>
		    <c:if test="${day>9}"><option>${day}</option></c:if>
		 </c:forEach>
        	</select>일

		<select name="endhour">
			<c:forEach begin="1" end="23" var="hour">
			    <c:if test="${hour<10}"><option>0${hour}</option></c:if>
				<c:if test="${hour>9}"><option>${hour}</option></c:if>
				<c:if test="${hour==23}"><option>00</option></c:if>
			</c:forEach>
		</select>시
		
		<select name="endminute">
			<c:forEach begin="0" end="59" var="minute">
	        <c:if test="${minute<10}"><option>0${minute}</option></c:if>
			<c:if test="${minute>9}"><option>${minute}</option></c:if>
			</c:forEach>
		</select>분 
</td>
</tr>

<tr>
	<th id="text">공개여부</th>
	<td>
		<input type="checkbox" name="public" value="1" onclick="box_check(this);" checked>공개
		<input type="checkbox" name="private" value="2" onclick="box_check(this);">비공개
	</td>
</tr>

<tr>
	<th id="text">내용</th>
	<td><textarea name="content" rows="10" cols="35">세부일정을 입력해주세요!</textarea></td>
</tr>

</table>
<br><input type="submit" value="일정등록">
</form>

</div>
</body>
</html>