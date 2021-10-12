<?php 
include_once 'connect.php';


$nimi = $_POST["nimi"];
$sposti = $_POST["sposti"];
$salasana = $_POST["salasana"];

$hash_password = password_hash($salasana, PASSWORD_DEFAULT);


$sql = "INSERT INTO users (nimi, sposti, salasana) VALUES ('$nimi', '$sposti', '$salasana' '$hash_password')";

mysqli_query($conn, $sql);

header("location: register.php");

?>