<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Log in AIR</title>
    <script src="jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <script src="dist/js/bootstrap.min.js"></script>

    <script src="dist/js/validator.js"></script>
    <style>
        .logodiv {
            height: 300px;
        }

        #logo {
            width: 100%;
            height: 100%;
            object-fit:cover;
        }

        .loginform {
            margin-top:100px;
        }
        
        #loginErrorMessage {
        		color: red;
        		border: 1px;
        }
        	.footer {
		border-top: 1px solid gray;
   		padding: 23px 0 12px 0;
		}
    </style>
</head>
<body>
<!--Logo Picture-->
    <div class="logodiv">
        <img id="logo" src="assets/logo.jpg"/>
    </div>

<!--Login Form-->
    <div class="col-md-4 col-md-offset-4 loginform" role="form">
        <h2 class="text-center">Log in</h2>
            <!--To do: change to Log in Servlet path!-->
        <form method="get" action="loginController" data-toggle="validator">
        			<div id="loginErrorMessage">
        			<%
	        			if(request.getParameter("error")!=null) {
	        		%>
					<div class="alert alert-danger" role="alert">
 					<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  					<span class="sr-only">Error:</span>
  					Username or password error. Please check it again!!!
					</div>
	        		<%
	        			}
        			%>
        			</div>
                <div class="form-group">
                    <label for="InputUsername">Username</label>
                    <input type="text" class="form-control" id="InputUsername" name="username" placeholder="Enter Username" required>
                </div>
                <div class="form-group">
                    <label for="InputPassword">Password</label>
                    <input type="password" class="form-control" id="InputPassword" name="password" placeholder="Enter Password" required>
                </div>

                <!--To do: change signup.html to signup.jsp!-->
                <a class="btn btn-primary" href="signup.jsp">Sign up</a>
                <button type="submit" class="btn btn-primary">Log In</button>
            </form>
     </div>
     
                 <div>
            <table>
            		<tr>
            			<th>username</th>
            			<th>password</th>
            		</tr>
            		<tr>
            			<td>Jinshuo Zhang</td>
            			<td>root</td>
            		</tr>
            		<tr>
            			<td>Jinan</td>
            			<td>root</td>
            		</tr>
            		<tr>
            			<td>Danmei Ye</td>
            			<td>root</td>
            		</tr>
            		<tr>
            			<td>Yu Huai</td>
            			<td>root</td>
            		</tr>
            		<tr>
            			<td>Kananha</td>
            			<td>root</td>
            		</tr>
            </table>
            </div>
</body>
</html>