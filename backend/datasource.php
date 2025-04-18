<?php

$servername = "localhost";
$username = "div";
$password = '1234';
$dbname = 'tshop';

$mysqlObj = new mysqli($servername, $username, $password, $dbname);

if ($mysqlObj->connect_error) {
    die('CONNECTION ERROR: ' . $mysqlObj->connect_error);
}
