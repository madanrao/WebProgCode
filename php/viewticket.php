<?php
session_start();
$username = $_SESSION["sess_username"];
$movieid = $_SESSION["sess_movie_id"];
$theaterid = $_SESSION["sess_theater_id"];
$cost = $_SESSION["sess_cost"];
$date = $_SESSION["sess_date"];
$time = $_SESSION["sess_timeslot"];


$con=mysql_connect('localhost','root','') or die("cant connect");
$selected = mysql_select_db('movie_tickets') or die("unable to connect to MySQL");
$sql="SELECT movie_name from movie where movie_id= '".$movieid."'";
$result= mysql_query($sql);
if(mysql_num_rows($result)>0)
{
		$movierow = mysql_fetch_array($result);
		$moviename = $movierow['movie_name'];
}
else
$moviename = 'Movie';

$sql="SELECT theater_name from theater where theater_id= '".$theaterid."'";
$result= mysql_query($sql);
if(mysql_num_rows($result)>0)
{
		$theaterrow = mysql_fetch_array($result);
		$theatername = $theaterrow['theater_name'];
}
else
$theatername = 'Theater';


?>

<html>
<head>
<title>Your Ticket </title>
<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
		<link href="css/styles.css" rel="stylesheet">
		<link rel="icon" href="images/favicon.ico"/>
</head>

<body>

<div class="container-full">
<div id="ticket_template">
<table id="ticket_table" border=3;>
<span class="cool-style">
<tr>
<td>
Name:</td>
<td> <?php echo $username;?> </td> </tr>
<tr>
<td>
Movie:</td>
<td>  <?php echo $moviename;?> </td>
</tr>
<tr>
<td>Theater:   </td><td> <?php echo $theatername;?>  </td>
</tr>
<tr>
<td> Cost:  </td><td> $ <?php echo $cost;?> </td>
</tr>
<tr>
<td>  Date: </td><td> <?php echo $date;?>  </td>
</tr>  
<tr>
<td>  Your Timeslot: </td><td> <?php echo $time;?>  </td>
</tr>
<tr>
<td>  Timeslots: </td><td> 1 = 9am<br>2 = 12noon <br> 3 = 3pm <br> 4 = 6pm  </td>
</tr>
</span>
</table>
</div>
</div>
 <div class="row">
        <div class="col-lg-12">
        <br><br>
          <p class="pull-right"><a href="index.php"> Back </a> Done? &nbsp;<a href="logout.php">Logout</a></p>
        <br><br>
        </div>
    </div>


</body>
</html>