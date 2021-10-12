<html>
<head>
</head>
<body>
<h1>Rekisteröidy</h1>
<form action="register2.php" method="POST">
<input type="text" name="nimi" placeholder="Nimi">
<br>
<input type="text" name="sposti" placeholder="Sähköposti">
<br>
<input type="password" name="salasana" placeholder="Salasana">
<br>
<input type="submit" value="Lähetä tiedot">
</form>
<table>
<tr>
<th>Nimi</th>
<th>Sähköposti</th>
</tr>
<?php 
error_reporting(0);
include_once "connect.php";
$sql = "SELECT * from users";

$result = mysqli_query($conn, $sql);
$resultCheck = mysqli_num_rows($result);

if ($resultCheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>";
        echo $row['nimi'];
        echo "</td>";
        echo "<td>";
        echo $row['sposti'];
        echo "</td>";
        echo "</tr>";
    }
}

?>
</body>
</html>