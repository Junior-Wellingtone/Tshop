<?php
require_once('datasource.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $productId = $_POST['productId'];
    $productName = $_POST['productName'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $imageUrl = $_POST['imageUrl'];
    $category = $_POST['category'];

    $stmt = $mysqlObj->prepare("UPDATE product SET productName=?, description=?, price=?, imageUrl=?, category=? WHERE productId=?");
    $stmt->bind_param("ssdssi", $productName, $description, $price, $imageUrl, $category, $productId);

    if ($stmt->execute()) {
        echo json_encode(["message" => "Product updated successfully"]);
    } else {
        echo json_encode(["error" => "Failed to update product"]);
    }
}
?>
