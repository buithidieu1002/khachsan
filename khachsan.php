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
        $dsKhachsan = timks($diachi_ks, $diadiem_ks, $loaiphong_ks);
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
                        <form method="POST">
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
                        <h2>Kết quả tìm kiếm</h2>
                        <div class="overview">
                            <?php if ($dsKhachsan != null): ?>
                                <table class="table">
                                    <tbody>
                                        <?php foreach ($dsKhachsan as $khachsan): ?>
                                            <tr>
                                                <td class="tb-img"><img src="<?= $khachsan['hinhanh'] ?>" width="200px"></td>
                                                <td class="tb-detail">
                                                    <h3><?= $khachsan['ten'] ?></h3>
                                                    <p><?= $khachsan['diachi'] ?></p>
                                                    <p><?= $khachsan['sdt'] ?></p>
                                                    <a href="/hotel/chitiet.php?id=<?= $khachsan['id'] ?>">Chi tiết >></a>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            <?php else: ?>
                                <div class="alert alert-danger">Không tìm thấy khách sạn theo yêu cầu của bạn!</div>
                            <?php endif; ?>
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
</html>
