<?php
session_start();

include('dbConnect.php');

//get the posted values
$user_name = $_GET['uname'];
$password = $_GET['pass'];

//now validating the username and password
$sql="SELECT username, password FROM user WHERE username='".$user_name."' AND password='".$password."'";
$result=mysql_query($sql);
if(mysql_num_rows($result)>0)
{
	$_SESSION['username'] = $user_name;
?>
	<script>
		document.location='my_admin/index.php';
	</script>
<?php	 
}