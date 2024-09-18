<?php session_start(); ?>
<?php 
include('dbConnect.php');

//get the posted values
$user_name = $_POST['user_name'];
$password = $_POST['password'];

//now validating the username and password
$sql="SELECT * FROM user WHERE username='".$user_name."' AND password='".$password."'";

$result=mysql_query($sql);
if(mysql_num_rows($result)>0)
{
$row=mysql_fetch_array($result);
$_SESSION['username']=$user_name;
$_SESSION['usertype']=$row["user_type"];

	header("location: my_admin/index.php"); 
} 
else
{
?>
<script>
alert("Invalid login details... Try Again!!");
history.back();
</script>
<?php
}
?>