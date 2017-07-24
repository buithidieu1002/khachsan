<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Đặt phòng khách sạn</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <?php include './database.php'; ?>
        <?php
        if (isset($_POST['id_khachsan'])) {
            datPhong($_POST['id_khachsan'], $_POST['hoten'], $_POST['sdt'], $_POST['loaiphong'], $_POST['sophong'], $_POST['ngayden'], $_POST['ngaydi']);
            print "<script>alert('Đã đặt phòng! Vui lòng chờ liên hệ từ Khách sạn!')</script>";
            print "<script> window.location = '/hotel'; </script>";
        }
        ?>
        <?php
        $diadiem = diadiem();
        $loaiphong = loaiphong()
        ?>
        <?php
        $diachi_ks = null;
        $diadiem_ks = 0;
        $loaiphong_ks = null;
        if (isset($_POST['diachi'])) {
            $diachi_ks = $_POST['diachi'];
        }
        if (isset($_POST['diadiem'])) {
            $diadiem_ks = $_POST['diadiem'];
        }
        if (isset($_POST['loaiphong'])) {
            $loaiphong_ks = $_POST['loaiphong'];
        }
        $khachsan = khachSan($_GET['id']);
        ?>
    </head>
    <body>
        <?php session_start(); ?>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <nav class="navbar top-menu">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/hotel">HotelBooking</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/hotel">Trang chủ</a></li>
                        <li><a href="#">Tin tức</a></li>
                        <li><a href="/hotel/khachsan.php">Khách sạn</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <?php if (isset($_SESSION['admin'])): ?>
                            <li><a href="/hotel/admin"><i class="fa fa-dashboard" aria-hidden="true"></i> Admin</a></li>
                            <li><a href="/hotel/dangxuat.php"><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng xuất</a></li>
                        <?php else: ?>
                            <li><a href="/hotel/dangnhap.php"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng nhập</a></li>
                        <?php endif; ?>
                    </ul>
                </div>
            </nav>
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/banner1.jpg">
                </div>

                <div class="item">
                    <img src="images/banner2.jpg">
                </div>

                <div class="item">
                    <img src="images/banner3.jpg">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="result">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <h3>Tìm kiếm</h3>
                        <form method="POST" action="/hotel/khachsan.php">
                            <label>Địa chỉ</label>
                            <input class="form-control" type="text" name="diachi" placeholder="Địa chỉ">
                            <label>Địa Điểm</label>
                            <select name="diadiem" class="form-control">
                                <option value="0">Tỉnh / Thành</option>
                                <?php
                                foreach ($diadiem as $temp) {
                                    print "<option value='" . $temp['id'] . "'>" . $temp['ten'] . "</option>";
                                }
                                ?>
                            </select>
                            <label>Loại phòng</label>
                            <select name="loaiphong" class="form-control">
                                <option value="">Tất cả</option>
                                <?php
                                foreach ($loaiphong as $temp) {
                                    print "<option>" . $temp['loaiphong'] . "</option>";
                                }
                                ?>
                            </select>
                            <hr>
                            <button type="submit" class="btn btn-success">Tìm kiếm</button>
                        </form>
                    </div>
                    <div class="col-md-9">
                        <h2><?= $khachsan['ten'] ?></h2>
                        <hr>
                        <div class="detail">
                            <p class="address">Địa chỉ Khách sạn: <?= $khachsan['diachi'] ?> - <?= $diadiem[($khachsan['diadiem'] - 1)]['ten'] ?></p>
                            <hr>
                            <?= $khachsan['gioithieu'] ?>
                            <h3>Bảng giá phòng</h3>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Loại phòng</th>
                                        <th>Giá phòng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($khachsan['phong'] as $phong): ?>
                                        <tr>
                                            <td><?= $phong['loaiphong'] ?></td>
                                            <td><b><?= number_format($phong['giaphong'], 0, '.', '.') ?> đ</b></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                            <h4>Để đặt phòng tại <b><i><?= $khachsan['ten'] ?></i></b>, vui lòng hoàn thành mẫu sau</h4>
                            <form method="POST">
                                <input value="<?= $khachsan['id'] ?>" hidden name="id_khachsan">
                                <label>Họ tên người đại diện</label>
                                <input class="form-control" type="text" placeholder="Your name" name="hoten" required>
                                <label>Số điện thoại</label>
                                <input class="form-control" type="text" placeholder="Phone number" name="sdt" required>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Loại phòng</label>
                                        <select class="form-control" name="loaiphong">
                                            <?php foreach ($khachsan['phong'] as $phong): ?>
                                                <option><?= $phong['loaiphong'] ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Số phòng</label>
                                        <input type="number" name="sophong" class="form-control" value="1" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Ngày nhận phòng: </label>
                                        <input type="date" name="ngayden" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Ngày trả phòng: </label>
                                        <input type="date" name="ngaydi" class="form-control">
                                    </div>
                                </div>
                                <hr>
                                <button class="btn btn-success" type="submit" id="datphong">Đặt phòng</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <footer>
            <div class="container">
                <div class="col-md-4">
                    <ul>
                        <li>Bùi Thị Diệu</li>
                        <li>MSSV:20146116</li>
                        <li>CN-CNTT 01</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul>
                        <li>Bách Khoa Hà Nội</li>
                        <li>Công nghệ thông tin</li>
                        <li>Soict.hust.edu.vn</li>
                    </ul>
                </div>
                <!-- <div class="col-md-4">
                    <ul>
                        <li>ABC ABC</li>
                        <li>ABC ABC</li>
                        <li>ABC ABC</li>
                    </ul>
                </div> -->
            </div>
        </footer>

    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $("#datphong").click(function () {
            return confirm("Xác nhận đặt phòng?");
        });
    </script>
</html>
