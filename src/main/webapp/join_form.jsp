<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

	#form_properties{
	margin-top:50px;
	color:skyblue;
	}
	
	#table {
    width: 250px;
    height: 300px;
    border: 1px solid skyblue;
    border-top-left-radius:10px;
	border-top-right-radius:10px;
	border-bottom-left-radius:10px;
	border-bottom-right-radius:10px;
    }
    
    input[type=text]{
    padding: 12px 20px;
    margin: 3px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    }
	
	#btn_1{
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	margin-bottom:3px;
	margin-top:8px;
	}
	
	#btn_2{
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	margin-bottom:3px;
	margin-top:3px;
	}
	
	#btn_group button{
	border:1px solid skyblue;
	background-color:rgba(0,0,0,0);
	color: skyblue;
	padding:3px;
	}
	
	#btn_group button:hover{
	color:white;
	background-color:skyblue;
	}
</style>

</head>
<body>
<div id="form_properties" align="center">
<table id="table">
<tr><td align="center">
<h1>Scheduler</h1>
<form action="#" method="post" >
    <input type="text" placeholder="아이디" name="id"/><br>
    <input type="text" placeholder="비밀번호" name="pwd"/><br>
    <div id="btn_group">
    <button type="button" id="btn_1" onclick="location.href='login.do'" >로그인</button><br>
    <button type="button" id="btn_2" onclick="location.href='userjoin.do'" >회원가입</button>
    </div>
</form>

</td></tr>
</table>

</div>
</body>
</html>