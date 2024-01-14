<?php
$connect=mysqli_connect('localhost','root');
if($connect)
{
    echo "connected";
}
else 
{
    echo "no connection";
}

mysqli_select_db($connect,'u332921460_Registration');
    $email=$_POST['email'];
    $password=$_POST['password'];
$emailquery="select * from registered_user where email='$email'";
$query=mysqli_query($connect,$emailquery);
$emailcount=mysqli_num_rows($query);
if($emailcount)
{
   $selectedRow=mysqli_fetch_assoc($query);
   $pass=$selectedRow['password'];

   $pass_decode=password_verify($password,$pass);
   if($pass_decode)
   {
    header("location:application_form.html");
   }
   else
   {
    echo "please check the details carefully. TRY AGAIN!!";
   }
}
else
{
    echo "invalid Email!";
}           
?> 