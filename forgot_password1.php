<?php
include('dbConnect.php');
$uname=$_POST["uname"];
echo $sql="select * from user where username='$uname'";
// echo $sql;
$res=mysql_query($sql);
if($row=mysql_fetch_array($res))
{
    $hintqtn=$row["hintq"];
	$hintans=$row["hinta"];
	$pwd=$row["password"];
?>

<!DOCTYPE html>

<head>
  <meta charset= "utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Form</title>
  <link rel="stylesheet" href="css/login_css.css">
  
</head>
<body>
  <section class="container">
    <div class="login">
      <h1>Please Enter Your Hint Answer.</h1>
						
					<div class="alert alert-info">
						Hint Question: <?php echo " ".$hintqtn; ?>
					</div>
					<form class="form-horizontal" action="getpwd.php" method="post">
						<fieldset>
							
						<div class="input-prepend" title="Hint Answer" data-rel="tooltip">
								<input name="hintans1" type="text" class="input-large span10" id="username" size="50" autofocus  />
						      <input name="hintans" type="hidden" id="hintans" value="<?php echo $hintans; ?>">
                              <input name="pwd" type="hidden" id="pwd" value="<?php echo $pwd; ?>">
</div>
							
							<div class="clearfix"></div>

						
							<div class="clearfix"></div>

							<p class="center span5">
							<button type="submit" class="btn btn-primary">Get Password</button>
							</p>
						</fieldset>
					</form>
				</div>


</body>
</html>
<?php	
	
}
else
{
?>
<script type="text/javascript">
alert("Wrong Username");
document.location="index.html";
</script>
<?php
}
?>

