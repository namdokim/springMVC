<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<% String data = (String)request.getAttribute("serverTime"); %>
<html>
<head>
	<title>Home</title>
 <style>
body {text-align: center;} 

#id  {align:center;}
#pwd  {align:center;}
	
a  {text-align: right;}

#btn1 {
	width : 100px;
	height : 30px;
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	margin-right:-4px;
}

</style>
	
	
	
</head>

<body>
<h1>
	Hello world!  
</h1>
<P>  The time on the server is ${serverTime}. </P>
<%=data %>
<br>
<br>
해당 시스템은 로그인 후 사용 해라  건방지게 그냥 하라 그래 
<hr>
<div>
	<form method="post" action="user/login.do">
	아 이 디 : <input type="text" id="id" name="id" placeholder="id"><br>
	비밀번호 : <input type="password" id="pwd" name="password" placeholder="password"><br>
	<button id="btn1">로그인 </button> <br>
	<a href="user/join.do">회원가입</a>
	


	</form>
</div>
</body>
</html>
