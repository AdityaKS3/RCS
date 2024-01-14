


var alpha_num = /^[0-9a-zA-Z\s]+$/;
var alpha = /^[A-Za-z\s]+$/;

function check() 
{
     //name
     var a = nameCheck();
    //email
    var b = emailCheck();
    //father name
    var c= FnameCheck();
    //mother name
    var d= MnameCheck();
    //gender
    var e=genderCheck();
    //address
    var f = addCheck();
    //zipcode
    var g = zipCheck();
    //country
    var h = document.getElementById("country").value;
    
    //about
    var i = document.getElementById("about").innerHTML;
    //language
    var j=langCheck();
   aadharValidate();
//Confirm
    

function aadharValidate()
{
    var aadhar= document.getElementById("aadhar").value;
    var twelvedigitcheck=/^\d{12}$/;
    var sixteendigitCheck=/^\d{16}$/;
    if(aadhar!='')
    {
        if(aadhar.match(twelvedigitcheck))
                {
                    return true;
                }
           else if (aadhar.match(sixteendigitCheck))
                {
                    return true;
                }
                else
                {
                    alert("enter valid email address");
                    return false;
                }
    }
}


//Name Check
function nameCheck() 
{
    var nam = document.getElementById("name").value;
    var alpha_num = /^[0-9a-zA-Z\s]+$/;
    var alpha = /^[A-Za-z\s]+$/;
    if (nam == "") 
    {
        alert("please enter your name");
        return false;
    } 
    else if (alpha.test(nam) == false) 
    {
        alert('Please input alphabet characters only in Name');
        return false;
    }
    else
    {
    return nam;
    }
}

//email Check
function emailCheck() 
{
    var mail = document.getElementById("email").value;
    if (mail == "") 
    {
        alert("please enter your email");
        return false;
    }

    else if (/^\w+([\._]?\w+)@\w+([\._]?\w+)(\.\w{2,3})+$/.test(mail)) 
    {
        return mail;
    }
    else
    {
    alert("You have entered an invalid email address!");
    return false;
    }
}

//FatherName Check
function FnameCheck() {
    var Fnam = document.getElementById("Fname").value;
    var alpha_num = /^[0-9a-zA-Z\s]+$/;
    var alpha = /^[A-Za-z\s]+$/;
    if (Fnam == "") {
        alert("please enter your Father's name");
        return false;
    } else if (alpha.test(Fnam) == false) {
        alert("Please input alphabet characters only in Father's name");
        return false;
    }
    return Fnam;
}
//MotherName Check
function MnameCheck() {
    var Mnam = document.getElementById("Mname").value;
    var alpha = /^[A-Za-z\s]+$/;
    if (Mnam == "") {
        alert("please enter your Mother's name");
        return false;
    } else if (alpha.test(Mnam) == false) {
        alert("Please input alphabet characters only in Mother's name");
        return false;
    }
    return Mnam;
}
//genderCheck()

function genderCheck() 
{   var g=false;
    var x= document.registration.gender;
    for(var i=0;i<x.length;i++)
    {
        if(x[i].checked)
        {
            g=true;
            break;
        }
    }

}


//addressCheck()
function addCheck() {
    var add = document.getElementById("address").value;

    if (add == "") {
        alert("please enter your address");
        return false;
    } else if (alpha_num.test(add) == false) {
        alert('Please input alphabet characters only in ADDRESS');
        return false;
    }
    return add;
}

//Zipcode check
function zipCheck() 
{
    var zip = document.getElementById("zipcode").value;

    if (zip.length != 6) {
        alert("zipcode length should be 6 digit");
        return false;
    }

    return zip;
}
//languageCheck
function langCheck() {
    var lang;

    var Eng = document.getElementById("1");
    var NonEng = document.getElementById("2");

    if (Eng.checked) {
        lang = Eng.value;
    }
    else if (NonEng.checked) {
        lang = NonEng.value;
    }
    else {
        alert("plese select your language");
        return false;
    }
    return lang;
}
function SelectOnlyThis(id) {
    if (id == 1) {
        document.getElementById(1).checked = true;
        document.getElementById(2).checked = false;
    }
    else
    {
        document.getElementById(1).checked = false;
    document.getElementById(2).checked = true;}
}

var x=confirm("are you sure you want to submit");
    if (x==true) 
    {
       var y= alert(
            "Resgistration form Data : \n" +
            "Name : " + a + "\n" +
             +"Email : " + b + "\n" +
            "Father's Name:" +c+"\n"+
            "Mother's Name:" +d+"\n"+
            "Gender " + e + "\n" +
            "Address : " + f + "\n" +
            "Zip code : " + g + "\n" +
            "Country : " + h + "\n" +
           
            "About : " + i + "\n" +
            "Language : " + j + "\n"
        );
         
       /* if(y!=true)
     {
    
   
        alert("session out");
      }*/
}
}





/*<script src="working.js" type="text/javaScript">
            function a()
            { 
                var nam=document.getElementById("gun.pet").innerText;
                (confirm(nam+"you are going to submit your details.CHECK CAREFULLY!");}
                function JSconfirm(){
 
 swal({
  
 title: "take me to fill educational detrails",
  
 text: "you are going to submit your details.CHECK CAREFULLY!",
  
 type: "warning",
  
 showCancelButton: true,
  
 confirmButtonColor: "#DD6B55",
  
 confirmButtonText: "Yes",
  
 cancelButtonText: "No",
  
 closeOnConfirm: false,
  
 closeOnCancel: false },
  
                function(isConfirm)
            {
                if(isConfirm)
                {
               window.location="education_details.html";
                }
                else 
                {swal("You are not redirect!", "success");}
            });
        }
        
/* function JSconfirm(){
 
swal({
 
title: "take me to fill educational detrails",
 
text: "you are going to submit your details.CHECK CAREFULLY!",
 
type: "warning",
 
showCancelButton: true,
 
confirmButtonColor: "#DD6B55",
 
confirmButtonText: "Yes",
 
cancelButtonText: "No",
 
closeOnConfirm: false,
 
closeOnCancel: false },
 
 function(isConfirm)
{
 if(isConfirm)
 {
window.location="education_details.html";
 }
 else 
 {swal("You are not redirect!", "success");}
});
}*/
