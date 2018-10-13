<?php

 $username = $_POST['username'];
 $email = $_POST['email'];
 $mobileno = $_POST['mobileno'];
 $password = $_POST['password'];
 $repassword = $_POST['repassword'];
 $college = $_POST['college'];
 $referal = $_POST['referal'];
 $output = '';
$con = mysqli_connect('localhost','root','','nu2');
 if(strlen($mobileno)==10)
 {
 	if((strlen($password)>=6) && (strlen($repassword)>=6))
 	{
       if($password==$repassword)
       {
       	 $q = "SELECT * FROM nu WHERE phonenumber = '$mobileno'";
       	 $query = mysqli_query($con,$q);
       	 if(!mysqli_num_rows($query))
       	 {
       	 $q1 = "SELECT * FROM nu WHERE password = '$password'";
       	 $query1 = mysqli_query($con,$q1);
       	   if(!mysqli_num_rows($query1))
       	   {
       	   	$q2 = "SELECT * FROM nu WHERE email = '$email'";
       	   	$query2 = mysqli_query($con,$q2);
       	   	if(!mysqli_num_rows($query2))
       	   	{
       	   	 $q3 = "INSERT INTO nu(username,password,email,phonenumber,college,referal)VALUES('$username','$password','$email','$mobileno','$college','$referal')";
             $query3 = mysqli_query($con,$q3);
                if($query3)
                    {
         	          $output .=  '<div class="alert-success" id="error" error="0" style="border-radius: 2.1875rem; height=50px;">
	                           <p style="text-align:center;text-weight:bold;">successfully resistered</p>
                            </div>';
                    }
                else
                    {
         	         $output .=  '<div class="alert-danger" id="error" error="1" style="border-radius: 2.1875rem; height=50px;">
	                           <p style="text-align:center;text-weight:bold;"> resistation failed please try again</p>
                            </div>';
                    }
       	   	}
       	   	else
       	   	 {
       	   	 	         	$output .=  '<div class="alert-danger" id="error" error="2" style="border-radius: 2.1875rem;">
	                           <p style="text-align:center;text-weight:bold;">This email is already exit</p>
                            </div>';
                 
       	   	 }

       	    } 
       	    else
       	        {
       	        	       $output .=  '<div class="alert-danger" id="error" error="3" style="border-radius: 2.1875rem; height=50px;">
	                           <p style="text-align:center;text-weight:bold;">please type anathor password</p>
                            </div>';
       	        	
       	        } 
       	 }
       	 else
       	 {
       	 	     $output .=  '<div class="alert-danger" id="error" error="4" style="border-radius: 2.1875rem;">
	                           <p>this phone number is already resiatered</p>
                            </div>';
       	 	
       	 }

       }
       else
       {
        	 	     $output .=  '<div class="alert-danger" id="error" error="5" style="border-radius: 2.1875rem; height=50px;">
	                           <p style="text-align:center;text-weight:bold;">please enter correct password</p>
                            </div>';
       }
 	}
 	else
 	{
 		        	 	     $output .=  '<div class="alert-danger" id="error" error="6" style="border-radius: 2.1875rem; height=50px;" >
	                           <p style="text-align:center;text-weight:bold;">the password length should be gretaer than six</p>
                            </div>';

 	}

 }
 else
 {
 	 		        	 	  $output .=  '<div class="alert-danger"  id="error" error="7" style="border-radius: 2.1875rem; height=50px;">
	                           <p style="text-align:center;text-weight:bold;">please enter valid mobile number</p>
                            </div>';
 	
 }
 echo $output;
 
?>