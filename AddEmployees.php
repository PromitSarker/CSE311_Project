<?php
session_start();
include("server.php");
$name = $mail = $number = $date = $address = "";
$name_err = $number_err = "";

if(isset($_POST['emp']))
{
     $name = mysqli_real_escape_string($db, $_POST['name']);
    $mail = mysqli_real_escape_string($db, $_POST['mail']);
     $number = mysqli_real_escape_string($db, $_POST['number']);
    $date = mysqli_real_escape_string($db, $_POST['date']);
     $address = mysqli_real_escape_string($db, $_POST['address']);

      if(empty($name))
    {
        $name_err = "Please enter the name.";
    }   
     if(empty($number))
    {
        $number_err = "Please enter the number.";
    }   

    $query = "SELECT * FROM employee WHERE name='$name' OR number='$number'";
    $result = mysqli_query($db, $query);
    $employee = mysqli_fetch_assoc($result);
  
  if ($employee) 
  {
    if ($employee['number'] === $number) {
      echo "Number already exists";
    }
    }

    $query = "INSERT INTO employee (name, mail, number, date, address ) 
  			  VALUES('$name', '$mail', $number, $date, '$address')";
    mysqli_query($db, $query);
}
?>