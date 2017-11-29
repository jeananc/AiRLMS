<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign up for AIR</title>
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

<!--Signup Form-->
<div class="col-md-4 col-md-offset-4 loginform" role="form">
    <!--To do: change to Log in Servlet path!-->
    <form method="get" action="#" data-toggle="validator">
        <div class="form-group">
            <label for="InputUsername">Username</label>
            <input type="text" class="form-control" id="InputUsername" name="username" placeholder="Enter Username" required>
        </div>

        <div class="form-group">
            <label for="InputPassword">Password</label>
            <input type="password" class="form-control" data-minlength="5" id="InputPassword" name="password" placeholder="Enter Password" required>
            <div class="help-block">Your password must contain at least 5 characters</div>
        </div>

        <div class="form-group">
            <label for="ConfirmPassword">Confirm Password</label>
            <input type="password" class="form-control" id="ConfirmPassword" data-match="#InputPassword" data-match-error="The passwords do not match." placeholder="Confirm" required>
        </div>

        <button type="submit" class="btn btn-primary">Sign Up</button>
    </form>
</div>




</body>
</html>