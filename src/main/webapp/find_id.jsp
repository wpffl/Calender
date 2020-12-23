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
<h1>아이디 찾기</h1>
<form action="find_id.do" method="post" >
    <input type="text" placeholder="이름" name="id"/><br>
    <input type="text" placeholder="이메일" name="pwd"/><br>
    <div id="btn_group">
	    <button type="submit" id="btn_1">아이디 찾기</button><br>
    </div>
</form>

</td></tr>
</table>
<div id="btn_group">
<button type=button id="btn_3" onclick="location.href='login.jsp'" >로그인 하기</button>
</div>
</div>
</body>
</html>