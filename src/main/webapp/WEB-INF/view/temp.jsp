<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>form 테스트</h1>
		<form action="/temp/join2" method="post">
			<div class="form-group">
				<label for="">username : </label> <input type="text" name="username" id="username" class="form-control" value="항1">
			</div>
			<div class="form-group">
				<label for="">password : </label> <input type="password" name="password" id="password" class="form-control" value="1234">
			</div>
			<div class="form-group">
				<label for="">email : </label> <input type="text" name="email" id="email" class="form-control" value="a@naver.com">
			</div>
		</form>
		<button id="join--submit" class="btn btn-primary">회원가입</button>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#join--submit").on("click", () => {
				// MIME TYPE -> application/json
				// js ---> json 문자열로 변경하는 방법
				// object ---> JSON	문자열로 변경
				let data = {
						username : $("#username").val(),
						password : $("#password").val(),
						email : $("#email").val()
				};
				console.log(JSON.stringify(data));
				$.ajax({
					type : 'POST',
					url : '/temp/join2',
					contentType : 'application/json; charset=utf-8',
					data : JSON.stringify(data),
					dataType : 'json'
				}).done(function(response) {
					console.log(response);					
					console.log(typeof response);
					alert("회원가입성공");
					location.href = '/temp/index';
				}).fail(function(error) {
					alert("서버오류");
				});
			});
		});
	</script>
</body>
</html>