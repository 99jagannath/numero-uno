<?php

$email = $_POST['email'];
$password = $_POST['password'];
$con = mysqli_connect('localhost','root','','nu2');
$q = "SELECT * FROM nu WHERE email = '$email'";
$output = '';
$query = mysqli_query($con,$q);
if(mysqli_num_rows($query))
{
	$q1 = "SELECT * FROM nu WHERE email = '$email' AND password = '$password'";
	$query1 = mysqli_query($con,$q1);
	if(mysqli_num_rows($query1))
	{
      
      		$output .= '<div class="alert-success" id="error" error="0" style="border-radius: 2.1875rem; height=50px;">
	                           <p style="text-align:center;text-weight:bold;">Successfully logedin</p>
                            </div>';
	} 
	else
	{
		$output .= '<div class="alert-danger" id="error" error="1" style="border-radius: 2.1875rem; height=50px;">
	                           <p style="text-align:center;text-weight:bold;">Please enter correct password</p>
                            </div>';
	}
}
else
{
     $output .='<div class="alert-danger" id="error" error="2" style="border-radius: 2.1875rem; height=50px;">
	                           <p style="text-align:center;text-weight:bold;">Please enter correct email</p>
                            </div>';
}
echo $output;

?>