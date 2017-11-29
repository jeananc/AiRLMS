<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>AIR</title>
    <script src="/lms/jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="/lms/dist/css/bootstrap.min.css">
    <script src="/lms/dist/js/bootstrap.min.js"></script>
    <style>
        .courseDescription {
            background-color: #2e6da4;
            margin: 100px;
            width: 80%;
            height: 500px;
        }
        	.footer {
		border-top: 1px solid gray;
   		padding: 23px 0 12px 0;
			.footer {
		border-top: 1px solid gray;
   		padding: 23px 0 12px 0;
	}}
    </style>
</head>

<body>
    <div class="col-md-2">
        <div id="myTab" class="list-group">
            <a href="#CourseMain" class="list-group-item active" data-toggle="tab">CourseMain</a>
            <a href="#Syllabus" class="list-group-item" data-toggle="tab">Syllabus</a>
            <a href="#Announcement" class="list-group-item" data-toggle="tab">Announcement</a>
        </div>
    </div>

    <div class="col-md-10">
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="CourseMain">
                <div class="col-md-3 courseDescription">
                    <h1 style="color: yellow;">This is course description for ENPM61<%=request.getParameter("courseID") %></h1>
                </div>
            </div>
            <div class="tab-pane fade" id="Syllabus">
                <p>Syllabus page is here</p>
                <%=session.getAttribute("userName") %>: Good Good Study, Day Day Up! <br>AIR is the best Team! 💪💪💪
            </div>
            <div class="tab-pane fade" id="Announcement">
                <p id="speech">Announcement page is here</p>
                <div class="btn btn-primary btn-lg btn-block"" onclick="tts();">speech</div>
            </div>
        </div>
    </div>
</body>


<script>
    $(document).ready(function () {
        $('#myTab a').click(function(e) {

            $('#myTab a').removeClass('active');

            var $this = $(this);
            if (!$this.hasClass('active')) {
                $this.addClass('active');
            }
            //e.preventDefault();
        });
    });
</script>
<script type="text/javascript">  
function tts()  
{  
    var content = document.getElementById("speech").innerHTML;
    content = encodeURI(content);  
    $("#speech").append("<audio autoplay=\"autoplay\">");  
    $("#speech").append("<source src=\"http://tts.baidu.com/text2audio?lan=en&ie=UTF-8&spd=10&text="+ content +"\" type=\"audio/mpeg\">");  
    $("#speech").append("<embed height=\"0\" width=\"0\" src=\"http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=2&text="+ content +"\">");  
    $("#speech").append("</audio>");  
}  
</script>  
</script>
</html>