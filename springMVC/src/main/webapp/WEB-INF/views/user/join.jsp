<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	text-align: center;
	font-size: 15px; 
}
input {
	height: 20px;
}


</style>
</head>
<body>
회원가입 후 본 사이트를 이용해주세요
<hr>
<div>
<form action="join.do" method="post" >
		너의 아이디 : <input type="text" name="id"><button></button><br>
		너의 비밀번호 : <input type="password" name="password"><br>
		너의 이름은? : <input type="text" name="name"><br>
		너의 e메일 : <input type="text" name="email"><br>
		너의 연락처 : <input type="text" name="phone"><br>
		너의 주소	: <input type="text" name="addr"><br>
		<input type="submit" value="회원가입">
</form>
</div>
</body>
</html>