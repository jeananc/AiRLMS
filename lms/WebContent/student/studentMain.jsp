<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="/lms/dist/css/bootstrap.min.css"> -->
<style>
 	.course {
	background-color: #66afe9;
	margin: 30px;
	height: 300px;
	} 
	.courseTitle {
		color: gray;
	}
	.footer {
		border-top: 1px solid gray;
   		padding: 23px 0 12px 0;
	}
    </style>
</head>
<body>
	<div>
		<jsp:include page="../framework/header.jsp"></jsp:include>
	</div>
	<div class="col-md-12">
	    <div class="col-md-3 course">
	        <h1><a class="courseTitle" href="student/student.jsp?courseID=1">ENPM611</a></h1>
	    </div>
	    <div class="col-md-3 course">
	        <h1><a class="courseTitle" href="student/student.jsp?courseID=2">ENPM612</a></h1>
	    </div>
	    <div class="col-md-3 course">
	        <h1><a class="courseTitle" href="studnet/student.jsp?courseID=3">ENPM613</a></h1>
	    </div>
	    <div class="col-md-3 course">
	        <h1><a class="courseTitle" href="student/student.jsp?courseID=4">ENPM614</a></h1>
	    </div>
	    <div class="col-md-3 course">
	        <h1><a class="courseTitle" href="student/student.jsp?courseID=5">ENPM615</a></h1>
	    </div>
	</div>
</body>
</html>