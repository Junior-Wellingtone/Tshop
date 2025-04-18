<?php
require_once('../datasource.php');

header('Content-Type: application/json');

$query = "SELECT * FROM product";
$result = $mysqlObj->query($query);

$products = [];
while ($row = $result->fetch_assoc()) {
    $products[] = $row;
}

echo json_encode($products);
?>
