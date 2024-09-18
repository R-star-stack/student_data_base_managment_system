<!DOCTYPE html>
<html lang="en"> 
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Form</title>
  <link rel="stylesheet" href="css/login_css.css">

</head>
<body>
  <section class="container">
    <div class="login">
      <h1>Please Enter Your Username to get Password.</h1>
					
					<form class="form-horizontal" action="forgot_password1.php" method="post">
						<fieldset>
							Username
							<div class="input-prepend" title="Username" data-rel="tooltip">
								<span class="add-on"><i class="icon-user"></i></span><input autofocus class="input-large span10" name="uname" id="uname" type="text"  />
							</div>
							
							<div class="clearfix"></div>

						
							<div class="clearfix"></div>

							<p class="center span5">
							<button type="submit" class="btn btn-primary">Login</button>
							</p>
						</fieldset>
					</form>
	</div>


</body>
</html>

