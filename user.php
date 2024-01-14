<?php
$connect=mysqli_connect('localhost','u332921460_yahootree');
if($connect)
{
    echo "connected";
}
else 
{
    echo "no connection";
}
mysqli_select_db($connect,'u332921460_Registration');
$a=$_POST['firstname'];
$b=$_POST['lastname'];
$c=$_POST['state'];
$d=$_POST['phonenumber'];
$e=$_POST['subject'];
$query="insert into user(firstName,lastName,state,phoneNumber,message)values('$a','$b','$c','$d','$e')";
//firing query
mysqli_query($connect,$query);
?>