<?php
session_start();
include("server.php");
$name = $mail = $password = "";
$name_err = $mail_err = $password_err = "";

if(isset($_POST['reg']))
{
    // Escaping all the special character and recieving input values from the form
    $name = mysqli_real_escape_string($db, $_POST['name']);
    $mail = mysqli_real_escape_string($db, $_POST['mail']);
    $password = mysqli_real_escape_string($db, $_POST['password']);


    if(empty($name))
    {
        $name_err = "Please enter your name.";
    }   
    
     if(empty($mail))
    {
        $mail_err = "Please enter a mail.";     
    } 

    if(empty($password))
    {
        $password_err = "Please enter a password.";     
    } 
    // Validate password length
    elseif(strlen(trim($password)) < 6)
    {
        $password_err = "Password must have atleast 6 characters.";
    }

    $user_check_query = "SELECT * FROM users WHERE name='$name' OR mail='$mail'";
    $result = mysqli_query($db, $user_check_query);
    $user = mysqli_fetch_assoc($result);
  
  if ($user) 
  {
    if ($user['name'] === $name) {
      echo "Name already exists";
    }

    if ($user['mail'] === $mail) {
       echo "Name already exists";
    }
  }

  	$query = "INSERT INTO users (name, mail, password) 
  			  VALUES('$name', '$mail', '$password')";
  	mysqli_query($db, $query);

    $_SESSION['name'] = $name;
  	$_SESSION['success'] = "You are now logged in";
}
?>