<?php

$DB_HOST = "localhost";
$DB_USER = "root";
$DB_PASS = "";
$DB_NAME = "hotel";

$conn = mysqli_connect($DB_HOST, $DB_USER, $DB_PASS) or die('Lỗi kết nối CSDL');

mysqli_select_db($conn, $DB_NAME) or die("Không thể chọn CSDL ".$DB_NAME);
mysqli_set_charset($conn, 'utf8');
