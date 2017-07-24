<?php

include '../database.php';

function themKhachSan($ten, $diachi, $diadiem, $sdt, $hinhanh, $gioithieu, $loaiphong, $giaphong) {
    global $conn;
    $gioithieu = mysql_real_escape_string($gioithieu);
    $query = "INSERT INTO `khachsan`(`ten`, `diachi`, `diadiem`, `sdt`, `hinhanh`, `gioithieu`) VALUES ('$ten', '$diachi', $diadiem, '$sdt', '$hinhanh', '$gioithieu')";
    mysqli_query($conn, $query);
    $query = "SELECT max(id) as max FROM khachsan";
    $rs = mysqli_query($conn, $query);
    $data = getData($rs);
    $max = $data[0]['max'];
    $i = 0;
    foreach($loaiphong as $phong){
        while($giaphong[$i] == null){
            $i++;
        }
        $query = "INSERT INTO `phong` VALUES ($max, '$phong',". $giaphong[$i].")";
        $i++;
        mysqli_query($conn, $query);
    }
}

function suaKhachSan($id, $ten, $diachi, $diadiem, $sdt, $hinhanh, $gioithieu, $loaiphong, $giaphong){
    global $conn;
    $gioithieu = mysql_real_escape_string($gioithieu);
    $query = "UPDATE `khachsan` SET `ten` = '$ten', `diachi` = '$diachi', `diadiem` = '$diadiem', `sdt` = '$sdt', `gioithieu` = '$gioithieu'";
    if($hinhanh != null){
        $query .= ", `hinhanh` = '$hinhanh'";
    }
    $query .= " WHERE id = $id";
    mysqli_query($conn, $query);
    $query = "DELETE FROM phong WHERE id_khachsan = $id";
    mysqli_query($conn, $query);
    $i = 0;
    foreach($loaiphong as $phong){
        while($giaphong[$i] == null){
            $i++;
        }
        $query = "INSERT INTO `phong` VALUES ($id, '$phong',". $giaphong[$i].")";
        $i++;
        mysqli_query($conn, $query);
    }
}

function xoaKhachSan($id){
    global $conn;
    $query = "DELETE FROM `khachsan` WHERE id = $id";
    mysqli_query($conn, $query);
    $query = "DELETE FROM `phong` WHERE id_khachsan = $id";
    mysqli_query($conn, $query);
}

function dsKhachSan(){
    global $conn;
    $query = "SELECT * FROM `khachsan`";
    $rs = mysqli_query($conn, $query);
    $data = getData($rs);
    return $data;
}

function dsDatPhong(){
    global $conn;
    $query = "SELECT * FROM `datphong`";
    $rs = mysqli_query($conn, $query);
    $data = getData($rs);
    return $data;
}

function xoaDatPhong($id){
    global $conn;
    $query = "DELETE FROM `datphong` WHERE id = $id";
    mysqli_query($conn, $query);
}