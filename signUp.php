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
    $a=$_POST['name2'];
    $b=$_POST['emailID'];
    $c=$_POST['phoneNO'];
    $d=$_POST['password'];
    $e=$_POST['cpassword'];
$pass=password_hash($d,PASSWORD_BCRYPT);
$Cpass=password_hash($e,PASSWORD_BCRYPT);
$token=bin2hex(random_bytes(15));
$emailquery="select * from registered_user where email='$b'";
$query=mysqli_query($connect,$emailquery);
$emailcount=mysqli_num_rows($query);
if($emailcount>0)
{
    ?>
    <script>
        alert("email already exist");
    </script>
    <?php
}
else
{
    if($d==$e)
    {
        $insertquery="insert into registered_user(name,email,phone,password,cpassword,token,status)values('$a','$b','$c','$pass','$Cpass','$token','inactive')";
        $store=mysqli_query($connect,$insertquery);
        if($store)
        {   
            //debugging tools. Only turn these on in your developement environment.
            //error_reporting(-1);
           // ini_set('display_errors','On');
            //set_error_handler("vamp_dump");
            $subject="Email Verification.";
            //special mail settings that can make mail less likely to be considered spam and offer logging in case of technical difficulties.
            //ini_set("mail.log","/tmp/mail.log");
            //ini_set("mail.add_x_header",TRUE);
            $body="Hi, $a! Click here to verify your email. http://localhost/project2/J.D.S/activate.php?token=$token";
                $headers="From:s19660@lnmipat.ac.in";
                if( mail($b,$subject,$body,$headers))
                {
                    ?>
                    <script>alert("link has been sent! Please check your email to verify.");</script>
                    <?php
                    header('location:index2.html');
                }
                else
                {
                    ?>
                    <script>alert("Email sending failed!");</script>
                    <?php
                }
            }
        }
    else
    {
        ?>
        <script>alert("password didn't mathced!");</script>
        <?php
    }
}
?>
