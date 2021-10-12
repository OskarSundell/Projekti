<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verkkokauppa</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <center>
    <form action="joku.php" method="POST">
   <input type="text" name="Tuote" placeholder="Tuote">
    <br>
    <input type="text" name="Hinta" placeholder="Hinta">
    <br>
    <input type="text" name="Kuvanlinkki" placeholder="Kuvan linkki">
    <br>
    <input type="submit" name="button">

</center>
</form>
    <div id="top">
    <h1>Verkkokauppa</h1><br><br>


<?php
include_once "connect.php";
$sql = "SELECT * FROM tuotteet2 order by id desc";

$result = mysqli_query($conn, $sql);
$resultCheck = mysqli_num_rows ($result);

if ($resultCheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>";
        echo $row ['Tuotteet'];
        echo "</td>";
        echo "<br>";
        echo "<td>";
        echo $row ['Hinta'];
        echo "</td>";
        echo "<br>";
        echo "<td>";
        echo "<img src='";
        echo $row ['Kuvat'];
        echo "' height='200'>";
        echo "</td>";
        echo "<br>";
        echo "</tr>";
    }

}





?>
</div>
</body>
</html>