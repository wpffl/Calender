<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/content.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
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
<form action="update.do">
<h1>일정 보기</h1>
<table class="type05">

<tr>
	<th scope="row" id="text1">제목</th>
	<td>
	<select name="type">
		<option value="officially">직장</option>
		<option value="personally" selected="selected">개인</option>
	</select>
<input type="text" name="title" value="${m.title}">
	</td>
	</tr>

<tr>
	<th scope="row" id="text1">닉네임</th>
	<td>${m.nickname}</td>
</tr>

<tr align="center">
	<th scope="row" id="text1">일시</th>
	<td>
		<select id="select_year" onchange="javascript:lastday();" name="startyear">
           	<c:forEach var="i" begin="2020" end="2030" step="1" >
               	<option selected="selected" value="${i}" <c:if test="${i == (now.year + 1900)}">selected</c:if> >${i}</option>
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
         	<c:if test="${startday<10}"><option>0${startday}</option></c:if>
		    <c:if test="${startday>9}"><option>${startday}</option></c:if>
		 </c:forEach>
        	</select>일
		<select>
			<c:forEach begin="1" end="23" var="starthour">
			    <c:if test="${starthour<10}"><option>0${starthour}</option></c:if>
				<c:if test="${starthour>9}"><option>${starthour}</option></c:if>
				<c:if test="${starthour==23}"><option>00</option></c:if>
			</c:forEach>
		</select>시
		
		<select>
			<c:forEach begin="0" end="59" var="startminute">
	        <c:if test="${startminute<10}"><option>0${startminute}</option></c:if>
			<c:if test="${startminute>9}"><option>${startminute}</option></c:if>
			</c:forEach>
		</select>분 ~ 

	<br>
		<select id="select_year" onchange="javascript:lastday();" name="endyear">
           	<c:forEach var="i" begin="2000" end="2030" step="1" >
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
         	<c:if test="${endday<10}"><option>0${endday}</option></c:if>
		    <c:if test="${endday>9}"><option>${endday}</option></c:if>
		 </c:forEach>
        	</select>일
		<select>
			<c:forEach begin="1" end="23" var="endhour">
			    <c:if test="${endhour<10}"><option>0${endhour}</option></c:if>
				<c:if test="${endhour>9}"><option>${endhour}</option></c:if>
				<c:if test="${endhour==23}"><option>00</option></c:if>
			</c:forEach>
		</select>시
		
		<select>
			<c:forEach begin="0" end="59" var="endminute">
	        <c:if test="${endminute<10}"><option>0${endminute}</option></c:if>
			<c:if test="${endminute>9}"><option>${endminute}</option></c:if>
			</c:forEach>
		</select>분
	</td>
</tr>

<tr>
	<th scope="row" id="text1">공개여부</th>
	<td><input type="checkbox" name="public" value="1" onclick="box_check(this);" checked>공개
	<input type="checkbox" name="private" value="2" onclick="box_check(this);">비공개</td>
</tr>

<tr>
	<th scope="row" id="text1">내용</th>
	<td><textarea name="content" rows="10" cols="35" value="${content}"></textarea></td>
</tr>

</table>
</form>
<input type="submit" value="달력보기" onclick="location.href='calender.do'">
<input type="submit" value="수정하기">
<input type="submit" value="삭제하기" onclick="location.href='del_content.do'">
</div>
</body>
</html>