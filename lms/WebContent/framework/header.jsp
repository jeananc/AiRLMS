<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style type="text/css">
	.header {
		height:120px;
		background: linear-gradient(to right, white, gray); 
	}
	#welcomeText {
		color: blue;
	}
</style>
</head>
<body>
	<div class="header col-md-12 a">
		<h2 class="text-center">AIR</h2>	
    		<div class="text-right" id="welcomeText">Welcome <%=session.getAttribute("userName") %></div>
		<a class="btn btn-primary pull-right" href="signup.html">Log out</a>
	</div>
</html>