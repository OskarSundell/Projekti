<?php 
include_once "connect.php";

$nimi = mysqli_real_escape_String($conn, $_POST['nimi']);
$salasana = mysqli_real_escape_String($conn, $_POST['salasana']);

$sql = "SELECT * FROM users WHERE nimi = '$nimi'";
$result = mysqli_query($conn, $sql);
$resultCheck = mysqli_num_rows($result);

if ($resultCheck < 1) {
    echo "Tietokannasta ei löydy käyttäjää $nimi";
    exit();
} else {

    if ($row = mysqli_fetch_assoc($result)) {
        $salasananmuunnos = password_verify($salasana, $row['salasana']);
        if ($salasananmuunnos == FALSE) {
    echo "Salasana väärin, yritä uudelleen ;(";
    exit();
        } else if ($salasananmuunnos == TRUE) {
            echo "$nimi Olet kirjautunut sisään";
        }
    }
}

?>