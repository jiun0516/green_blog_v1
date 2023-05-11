<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

	<div class="container">
		<form action="#" method="post">
			<div class="form-group">
				<label for="">username : </label> 
				<input type="text" name="username" id="username" class="form-control" value="아톰">
			</div>
			<div class="form-group">
				<label for="">password : </label> 
				<input type="password" name="password" id="password" class="form-control" value="1234">
			</div>
			<div class="form-group">
				<label for="">email : </label> 
				<input type="text" name="email" id="email" class="form-control" value="a@naver.com">
			</div>
			<button type="submit" class="btn btn-primary">회원가입</button>
		</form>
	</div>
	
<%@ include file="../layout/footer.jsp" %>