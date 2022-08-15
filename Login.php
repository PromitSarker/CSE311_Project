<?php

   include('server.php');
    $mail_err = $password_err = " " ; 

   if($_SERVER["REQUEST_METHOD"] == "POST") {
      if(empty($_POST["mail"]))
      {
        $mail_err = "Please enter your mail.";
      } 
      else{
        $mail =$_POST["mail"];
      }

      if(empty($_POST["password"]))
      {
        $password_err = "Please enter your password.";
      } 
      else{
        $password = $_POST["password"];
      }
      
      $sql = "SELECT mail, password FROM users WHERE mail = '$mail' and password = '$password'";

      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $count = mysqli_num_rows($result);
		
      if($count == 1) {
         echo "Login successful";
      }
      else {
         echo "Invalid Mail or Pass";
      }
   }
?>