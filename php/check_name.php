<?php

$con=mysql_connect('localhost','root','') or die("cant connect");
$selected = mysql_select_db('movie_tickets') or die("unable to connect to MySQL");

$name = mysql_real_escape_string($_POST['username']);
if(filter_var($name, FILTER_VALIDATE_EMAIL))
{
$sql="SELECT * from Customer where email_id= '".$name."'";
$result= mysql_query($sql);
if(mysql_num_rows($result)>0)
{
echo "<img src='images/cross.jpg'>Not available";
}
else
{
echo "<img src='images/tick.jpg'>Available";
}
}
else
{
echo "<img src='images/cross.jpg'>Incorrect Email ID";
}
mysql_close($con); 
?>