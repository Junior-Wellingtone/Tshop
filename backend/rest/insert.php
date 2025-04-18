<?php
require_once('datasource.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $productName = $_POST['productName'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $imageUrl = $_POST['imageUrl'];
    $category = $_POST['category'];

    $stmt = $mysqlObj->prepare("INSERT INTO product (productName, description, price, imageUrl, category) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("ssdss", $productName, $description, $price, $imageUrl, $category);

    if ($stmt->execute()) {
        echo json_encode(["message" => "Product added successfully"]);
    } else {
        echo json_encode(["error" => "Failed to add product"]);
    }
}
?>
