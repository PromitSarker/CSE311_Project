<?php
 include("header.html");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Current Stock</title>
    <link rel="stylesheet" href="currentStock.css">
</head>
<body>
    <h1> Current Stock </h1>
    <?php
    include 'db_connection.php';
    $sql = "SELECT stock.medicineName, stock.quantity FROM stock WHERE stock.quantity>0 ORDER BY stock.quantity ASC"; 
    $result = $conn->query($sql);
    echo '<table align = "center">';
    echo "<tr> <th> Medicine Name </th> <th> Quantity </th> </tr>"; 
    while($row = mysqli_fetch_assoc($result)){
        echo "<tr><td>" . htmlspecialchars($row['medicineName']) . "</td><td>" . htmlspecialchars($row['quantity']) . "</td></tr>";
    }
    echo "</table>";
    $conn->close();
    ?>
</body>
</html>