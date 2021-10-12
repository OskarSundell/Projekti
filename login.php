<?php
session_start();

?>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta httå-equiv="x-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kirjautuminen</title>
</head>
<body>

<h1>Kirjaudu</h1>


<form action="login2.php" method="post">

<label for="nimi">Käyttäjätunnus </label><input type="email" name="nimi" id="nimi" value='
<?php if (isset($_SESSION['nimi'])) {
    echo $_SESSION['nimi'];
}
?>
' required>
<label for="salasana">Salasana </label><input type ="password" name="salasana" id="salasana" required>
<input type="submit" value="Kirjaudu">

</form>