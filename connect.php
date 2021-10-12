<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbName = "testi";

$conn = new mysqli($servername, $username, $password, $dbName);

if ($conn->connect_error) {
    die("Connect failed: " . $conn->connect_error);
}
?>