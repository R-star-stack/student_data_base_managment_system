<?php
 $hintans=$_POST["hintans"];
 $hintans1=$_POST["hintans1"];
$pwd=$_POST["pwd"];
if($hintans==$hintans1)
{
?>
<script type="text/javascript">
alert("Your Password is <?php echo $pwd; ?>");
document.location="index.html";
</script>
<?php
}
else
{
?>
<script type="text/javascript">
alert("Wrong Hint Answer");
document.location="index.html";
</script>
<?php

}
?>