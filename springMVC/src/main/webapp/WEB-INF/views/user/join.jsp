<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%= request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	
	var result2 = 0;
	function Idcheck() {
		if($('#id').val() != ''){
			$.ajax({
				type: 'post',
				url : 'idcheck.do',
				data : 'id='+$('#id').val(),
				/* dataType :'json', */
				success : function(result){
					if (result == '0') {
						result2 = 0;
						$('#result').text('사용 가능');
					}else {
						result2 = 1;
						$('#result').text('어딜 감히');
					}
					
				},
				error : function(a,b,c){
					console.log(a,b,c);
				}
			});
			
		} else {
			alert('입력해라');
			$('#id').focus();
		}
		
		
		
	}

	function gate(){
		if (result2 == 0){
			$("#gate2").submit();
		}else if{
			alert('될 거라 생각햇냐????');
		}else if ($('#id').val == "") {
			alert("아이디 입력해라")
			$('#id').focus();
		}
		
	}
	
	

</script>
<style>
div {
	text-align: center;
	font-size: 15px; 
}
input {
	height: 20px;
}
.id_ok{color:#fff; display: none;}
.id_already{color:#6A82FB; display: none;}


</style>
</head>
<body>
<h2 style="align:center;">회원가입 후 본 사이트를 이용해주세요</h2>
<hr>
<div>
<form action="join.do" method="post" id="gate2" name="frm">
		너의 아이디 : <input type="text" name="id" id="id">
		<button type="button" id="idcheck" onclick="Idcheck();">중복이다 </button>
		<span id="result"></span>
		<br>
		너의 비밀번호 : <input type="password" name="password"><br>
		너의 비밀번호 확인 : <input type="password" name="password2"><br>
		너의 이름은? : <input type="text" name="name"><br>
		너의 e메일 : <input type="text" name="email"><br>
		너의 연락처 : <input type="text" name="phone"><br>
		너의 주소	: <input type="text" name="addr"><br>
		<input type="button" value="회원가입" onclick="gate()">
</form>
</div>
</body>
</html>