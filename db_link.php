<?php

    header("Content-Type:text/html; charset='utf-8'");
    
    $db_host = "localhost:3306";
    $db_access="root";
    $db_password="0000";
    
    $conn = @mysqli_connect($db_host, $db_access, $db_password) or die ("連線錯誤");
    
    mysqli_query($conn, "SET CHARACTER SET 'utf8'");
    mysqli_query($conn, "set names utf8");
    
?>