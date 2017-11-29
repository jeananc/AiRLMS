<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>AIR</title>
    <script src="jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <script src="dist/js/bootstrap.min.js"></script>
    <style>
        .course {
            background-color: #66afe9;
            margin: 30px;
            height: 300px;
        }

        .courseDescription {
            background-color: #2e6da4;
            margin: 100px;
            width: 80%;
            height: 500px;
        }
    </style>
</head>

<body>
    <!--<div class="col-md-2">-->
        <!--<ul id="myTab" class="nav nav-stacked nav-pills" border=1px color="black">-->
            <!--<li class="active">-->
                <!--<a href="#Main" data-toggle="tab"> <i class="icon-chevron-right"></i>"Main"</a>-->
            <!--</li>-->
            <!--<li>-->
                <!--<a href="#CourseMain" data-toggle="tab">Course Main</a>-->
            <!--</li>-->
            <!--<li>-->
                <!--<a href="#Syllabus" data-toggle="tab">Syllabus</a>-->
            <!--</li>-->
            <!--<li>-->
                <!--<a href="#Announcement" data-toggle="tab">Announcement</a>-->
            <!--</li>-->
        <!--</ul>-->
    <!--</div>-->
    <div class="col-md-2">
        <div id="myTab" class="list-group">
            <a href="#Main" class="list-group-item active" data-toggle="tab">Main</a>
            <a href="#CourseMain" class="list-group-item" data-toggle="tab">CourseMain</a>
            <a href="#Syllabus" class="list-group-item" data-toggle="tab">Syllabus</a>
            <a href="#Announcement" class="list-group-item" data-toggle="tab">Announcement</a>
        </div>
    </div>

    <div class="col-md-10">
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="Main">
                <div class="col-md-3 course">
                    <h1>ENPM611</h1>
                </div>
                <div class="col-md-3 course">
                    <h1>ENPM612</h1>
                </div>
                <div class="col-md-3 course">
                    <h1>ENPM613</h1>
                </div>
                <div class="col-md-3 course"></div>
                <div class="col-md-3 course"></div>
            </div>
            <div class="tab-pane fade" id="CourseMain">
                <div class="col-md-3 courseDescription">
                    <h1>This is course description</h1>
                </div>
            </div>
            <div class="tab-pane fade" id="Syllabus">
                <p>Syllabus</p>
            </div>
            <div class="tab-pane fade" id="Announcement">
                <p>Announcement</p>
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
</html>