<?php

$servername = "telecomunicacionespalencia-mysqldbserver.mysql.database.azure.com";
$username = "mysqldbuser@telecomunicacionespalencia-mysqldbserver";
$password = "Palencia1";
$db = "ecomercepalencia";

// Create connection
$con = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>
