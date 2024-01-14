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
$a=$_POST['first'];
$b=$_POST['second'];
$c=$_POST['third'];  
$d=$_POST['email'];
$e=$_POST['aadhar'];
$f=$_POST['Fname'];
$g=$_POST['Mother'];
$t=$_POST['trade'];
$h=$_POST['date'];
$i=$_POST['gender'];
$j=$_POST['phone1'];
$k=$_POST['country'];
$l=$_POST['address'];
$m=$_POST['zipcode'];
$n=$_POST['language'];
$o=$_POST['about'];
//$p=$_POST['altName'];
//$q=$_POST['alterName'];
$r=$_POST['phone2'];
$profilefile=$_FILES['photo'];
$aadharfile=$_FILES['Aadharphoto'];

//getting documents
//getting profile photo
$filename=$profilefile['name'];
$filepath=$profilefile['tmp_name'];
$fileerror=$profilefile['error'];
if($fileerror==0)
{
    $destfile='profile/'.$filename;
echo"$destfile";
move_uploaded_file($filepath,$destfile);
}
//getting aadhar photo 
$filename2=$aadharfile['name'];
$filepath2=$aadharfile['tmp_name'];
$fileerror2=$aadharfile['error'];
if($fileerror2==0)
{
    $destfile2='aadhar/'.$filename2;
echo"$destfile2";
move_uploaded_file($filepath2,$destfile2);
}
$query="insert into student_info(Name,Middle_Name,Last_Name,Email,Aadhar_Number,Father_name,Mother_name,Trade,D_O_B,Gender,Mobile_no,Country,Address,Zipcode,Language,About,Alternate_Number,photo,Aadhar)
values('$a','$b','$c','$d','$e','$f','$g','$t','$h','$i','$j','$k','$l','$m','$n','$o','$r','$profilefile','$aadharfile')";
//firing query
mysqli_query($connect,$query);


require("fpdf/fpdf.php");

/*class PDF extends FPDF
{
// Load data
function LoadData($file)
{
    // Read file lines
    $lines = file($file);
    $data = array();
    foreach($lines as $line)
        $data[] = explode(';',trim($line));
    return $data;
}

// Colored table
function FancyTable($header, $data)
{
    // Colors, line width and bold font
    $this->SetFillColor(255,0,0);
    $this->SetTextColor(255);
    $this->SetDrawColor(128,0,0);
    $this->SetLineWidth(.3);
    $this->SetFont('','B');
    // Header
    $w = array(40, 35, 40, 45);
    for($i=0;$i<count($header);$i++)
        $this->Cell($w[$i],7,$header[$i],1,0,'C',true);
    $this->Ln();
    // Color and font restoration
    $this->SetFillColor(224,235,255);
    $this->SetTextColor(0);
    $this->SetFont('');
    // Data
    $fill = false;
    foreach($data as $row)
    {
        $this->Cell($w[0],6,$row[0],'LR',0,'L',$fill);
        $this->Cell($w[1],6,$row[1],'LR',0,'L',$fill);
        $this->Cell($w[2],6,number_format($row[2]),'LR',0,'R',$fill);
        $this->Cell($w[3],6,number_format($row[3]),'LR',0,'R',$fill);
        $this->Ln();
        $fill = !$fill;
    }
    // Closing line
    $this->Cell(array_sum($w),0,'','T');
}
}*/

$pdf = new FPDF();
$pdf->AddPage();
$pdf->Output();





//echo "$query";

?>


