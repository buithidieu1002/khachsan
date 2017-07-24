<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
        session_start();
        if (!isset($_SESSION['admin'])) {
            header("Location: /hotel");
        }
        ?>
        <title>Đặt phòng khách sạn</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/admin.css" rel="stylesheet" type="text/css"/>
        <?php include 'database.php'; ?>
        <?php
        $diadiem = diadiem();
        $loaiphong = loaiphong();
        $khachsan = null;
        ?>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-static-top" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" href="/hotel">Trang chủ</a>
                <a class="navbar-brand" href="/hotel/admin">Quản trị</a>
            </div>
            <div class="navbar-default sidebar">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav in" id="side-menu">
                        <li class="active">
                            <a href="/hotel/admin"><i class="fa fa-dashboard fa-fw"></i> Danh sách Khách sạn</a>
                        </li>
                        <li>
                            <a href="/hotel/admin/edit.php"><i class="fa fa-table fa-fw"></i> Thêm Khách sạn</a>
                        </li>
                        <li>
                            <a href="/hotel/admin/datphong.php"><i class="fa fa-list" aria-hidden="true"></i> Danh sách đặt phòng</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="main-content">
            <div class="row">
                <?php
                if (isset($_POST['save'])) {
                    if (isset($_POST['id'])) {
                        if (isset($_FILES["hinhanh"]) && $_FILES["hinhanh"]["name"] != null) {
                            move_uploaded_file($_FILES["hinhanh"]["tmp_name"], '../images/hotel/' . $_FILES["hinhanh"]["name"]);
                            $src = '/hotel/images/hotel/' . $_FILES["hinhanh"]["name"];
                        } else {
                            $src = '';
                        }
                        suaKhachSan($_POST['id'], $_POST['ten'], $_POST['diachi'], $_POST['diadiem'], $_POST['sdt'], $src, $_POST['gioithieu'], $_POST['loaiphong'], $_POST['giaphong']);
                        print "<div class='alert alert-success'>Đã sửa thông tin Khách sạn!</div>";
                    } else {
                        if (isset($_FILES["hinhanh"]) && $_FILES["hinhanh"]["name"] != null) {
                            move_uploaded_file($_FILES["hinhanh"]["tmp_name"], '../images/hotel/' . $_FILES["hinhanh"]["name"]);
                            $src = '/hotel/images/hotel/' . $_FILES["hinhanh"]["name"];
                        } else {
                            $src = '/hotel/images/hotel/default.jpg';
                        }
                        themKhachSan($_POST['ten'], $_POST['diachi'], $_POST['diadiem'], $_POST['sdt'], $src, $_POST['gioithieu'], $_POST['loaiphong'], $_POST['giaphong']);
                        print "<div class='alert alert-success'>Đã thêm Khách sạn!</div>";
                    }
                } else {
                    if (isset($_GET['delete'])) {
                        xoaKhachSan($_GET['delete']);
                        header("Location: /hotel/admin/");
                    }
                }

                if (isset($_GET['id'])) {
                    $khachsan = khachsan($_GET['id']);
                }
                ?>

                <?php if (isset($_GET['id'])): ?>
                    <h2> Chỉnh sửa thông tin khách sạn </h2>
                <?php else: ?>
                    <h2> Thêm Khách sạn </h2>
                <?php endif; ?>

                <form method="POST"  enctype="multipart/form-data">
                    <?php if (isset($_GET['id'])): ?>
                        <input hidden value="<?= $_GET['id'] ?>" name="id">
                    <?php endif; ?>
                    <div class="col-md-12">
                        <label for="tieude">Tên khách sạn   : </label>
                        <input class="form-control" name="ten" id="tieude" type="text" required value="<?= $khachsan['ten'] ?>">
                    </div>
                    <div class="col-md-12">
                        <label for="tomtat">Địa chỉ: </label>
                        <input class="form-control" name="diachi" id="tomtat" type="text" required value="<?= $khachsan['diachi'] ?>">
                    </div>
                    <div class="col-md-6">
                        <label>Địa điểm</label>
                        <select class="form-control" name="diadiem" id="diadiem">
                            <option value="0">Tỉnh / Thành</option>
                            <?php
                            foreach ($diadiem as $temp) {
                                print "<option value='" . $temp['id'] . "'>" . $temp['ten'] . "</option>";
                            }
                            ?>
                        </select>
                        <?php
                        if ($khachsan != null) {
                            print "<script>document.getElementById('diadiem').value = '" . $khachsan['diadiem'] . "';</script>";
                        }
                        ?>
                    </div>
                    <div class="col-md-6">
                        <label>Sđt</label>
                        <input type="tel" class="form-control" name="sdt" value="<?= $khachsan['sdt'] ?>">  
                    </div>
                    <div class="col-md-12">
                        <label for="hinhanh">Hình ảnh: </label>
                        <?php if (isset($_GET['id'])): ?>
                            <img src="<?= $khachsan['hinhanh'] ?>" width="250">
                        <?php endif ?>
                        <input class="form-control" name="hinhanh" type="file">
                    </div>
                    <div class="col-md-12">
                        <label>Loại phòng</label>
                        <table class="table">
                            <tbody id="loaiphong">
                                <?php $i = 0 ?>
                                <?php if ($loaiphong != null): ?>
                                    <?php foreach ($loaiphong as $phong): ?>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="loaiphong[]" 
                                                <?= $khachsan['phong'][$i]['loaiphong'] == $phong['loaiphong'] ? "checked" : "" ?>
                                                       value="<?= $phong['loaiphong'] ?>"> <?= $phong['loaiphong'] ?>
                                            </td>
                                            <td class="col-md-8">
                                                Giá: <input type="number" name="giaphong[]" value="<?= $khachsan['phong'][$i]['loaiphong'] == $phong['loaiphong'] ? $khachsan['phong'][$i]['giaphong'] : "" ?>">
                                            </td>
                                        </tr>
                                        <?php
                                        if ($khachsan['phong'][$i]['loaiphong'] == $phong['loaiphong']) {
                                            $i ++;
                                        }
                                        ?>
                                    <?php endforeach; ?>
                                <?php endif ?>
                            </tbody>
                        </table>
                        <a onclick="themPhong()" class="btn btn-default">Thêm loại phòng</a>
                    </div>
                    <div class="col-md-12">
                        <label>Giới thiệu: </label>
                        <textarea class="ckeditor" id="ckeditor" name="gioithieu" required><?= $khachsan['gioithieu'] ?></textarea>

                        <div class="clearfix"></div>
                        <hr>
                        <button type="submit" name="save" class="btn btn-success"> Lưu </button>
                    </div>
                </form>
                <div class="clearfix"></div>
                <br>
            </div>
        </div>
        <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script>
                            function themPhong() {
                                var name = prompt("Nhập tên loại phòng:", "Phòng ");
                                if (name !== null && name !== "") {
                                    $('#loaiphong').append('<tr><td><input type="checkbox" name="loaiphong[]" value="' + name + '"> ' + name + '</td><td>Giá: <input type="number" name="giaphong[]"></td></tr>');
                                }
                            }
        </script>
    </body>
</html>