<?php
require_once('datasource.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $productId = $_POST['productId'];

    $stmt = $mysqlObj->prepare("DELETE FROM product WHERE productId=?");
    $stmt->bind_param("i", $productId);

    if ($stmt->execute()) {
        echo json_encode(["message" => "Product deleted successfully"]);
    } else {
        echo json_encode(["error" => "Failed to delete product"]);
    }
}
?>
