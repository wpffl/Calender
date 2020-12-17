<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/login.css">

</head>
<body>
<div id="form_properties" align="center">
<table id="table">
<tr><td align="center"> 
<h1>Scheduler</h1>
<form action="login.do" method="post" >
    <input type="text" placeholder="아이디" name="id"/><br>
    <input type="text" placeholder="비밀번호" name="pwd"/><br>
    <div id="btn_group">
	    <button type="submit" id="btn_1">로그인</button><br>
	    <button type="button" id="btn_2" onclick="location.href='join.jsp'" >회원가입</button>
    </div>
</form>

</td></tr>
</table>

<div id="btn_group">
<button type=button id="btn_3" onclick="location.href='find_id.jsp'" >아이디 찾기</button><br>
<button type=button id="btn_4" onclick="location.href='find_pwd.jsp'" >비밀번호 찾기</button><br>
</div>
</div>
</body>
</html>