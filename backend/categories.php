<?php
    require_once('datasource.php');

    $sql = 'SELECT DISTINCT category FROM product';
    $tableData = $mysqlObj->query($sql);

    $categories = [];

    if ($tableData && $tableData->num_rows > 0) {
        while ($row = $tableData->fetch_assoc()) {
            $categories[] = $row['category']; 
        }
    }

    header('Content-Type: application/json');
    echo json_encode($categories, JSON_UNESCAPED_UNICODE);
?>
