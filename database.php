<?php

include 'config.php';

function getData($rs) {
    $count = 0;
    while ($row = mysqli_fetch_assoc($rs)) {
        $arr[] = $row;
        $count++;
    }
    if ($count > 0) {
        return $arr;
    }
    return null;
}

function khachSan($id){
    global $conn;
    $query = "SELECT * FROM `khachsan` WHERE id = $id";
    $rs = mysqli_query($conn, $query);
    $data = getData($rs);
    $khachsan = $data[0];
    $query = "SELECT * FROM `phong` WHERE id_khachsan = $id";
    $rs = mysqli_query($conn, $query);
    $khachsan['phong'] = getData($rs);
    return $khachsan;
}

function diadiem(){
    global $conn;
    $query = "SELECT * FROM diadiem";
    $rs = mysqli_query($conn, $query);
    return getData($rs);
}

function loaiphong(){
    global $conn;
    $query = "SELECT DISTINCT loaiphong FROM phong";
    $rs = mysqli_query($conn, $query);
    return getData($rs);
}

function timks($diachi, $diadiem, $loaiphong){
    global $conn;
    $query = "SELECT DISTINCT khachsan.id, khachsan.ten, khachsan.diachi, khachsan.diadiem, khachsan.sdt, khachsan.hinhanh "
            . "FROM khachsan, phong "
            . "WHERE khachsan.diachi LIKE '%$diachi%' AND khachsan.id = phong.id_khachsan";
    if($diadiem != 0){
        $query .= " AND khachsan.diadiem = $diadiem";
    }
    if($loaiphong != null){
        $query .= " AND phong.loaiphong = '$loaiphong'";
    }
    $rs = mysqli_query($conn, $query);
    return getData($rs);
}

function datPhong($id_khachsan, $hoten, $sdt, $loaiphong, $sophong, $ngayden, $ngaydi){
    global $conn;
    $query = "INSERT INTO `datphong`(`id_khachsan`, `hoten`, `sdt`, `loaiphong`, `sophong`, `ngayden`, `ngaydi`) "
            . "VALUES ($id_khachsan, '$hoten', '$sdt', '$loaiphong', $sophong, STR_TO_DATE('$ngayden','%Y-%m-%d'), STR_TO_DATE('$ngaydi','%Y-%m-%d'))";
    mysqli_query($conn, $query);
}