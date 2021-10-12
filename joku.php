<?php
include_once 'connect.php';



$Tuotteet = $_POST["Tuote"];
$Hinta = $_POST["Hinta"];
$Kuvat = $_POST["Kuvanlinkki"];

 $sql = "INSERT INTO tuotteet2 (Tuotteet, Hinta, Kuvat) VALUES ('$Tuotteet', '$Hinta', '$Kuvat')";

mysqli_query($conn, $sql);

header("location: index.php");

?>