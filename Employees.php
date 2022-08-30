<?php
include("server.php");
include("header.html");
$query = "SELECT name, mail, number, address, date FROM employee";
$result = mysqli_query($db, $query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="Stylesheet" href="Stylesheet.css" />
    <title>Document</title>
</head>
<body class="body">
<p >Showing All Your Employee List Here</p>
<table class="emplist">
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Contact Number    </th>
    <th>Date of Joining</th>
    <th>Address</th>
</tr>
<?php
if (mysqli_num_rows($result) > 0) {
  $count=1;
  while($data = mysqli_fetch_assoc($result)) {
 ?>
<tr>
   <td class="td1"><?php echo $data['name']; ?> </td>
   <td class="td1"><?php echo $data['mail']; ?> </td>
   <td class="td1"><?php echo $data['number']; ?> </td>
   <td class="td1"><?php echo $data['date']; ?> </td>
   <td class="td1"><?php echo $data['address']; ?> </td>
 <tr>
   <?php
  $count++;}} ?>

</table
</body>
</html>