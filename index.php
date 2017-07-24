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
        $loaiphong = loaiphong();
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

        <div class="find-hotel">
            <hr>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 form-request">
                        <h2>Tìm kiếm khách sạn</h2>
                        <form action="/hotel/khachsan.php" method="POST">
                            <div class="form-group">
                                <label for="diachi">Điểm đến: </label>
                                <div class="row">
                                    <div class="col-md-8">
                                        <input type="text" name="diachi" id="diachi" class="form-control" placeholder="Tên đường, khu vực,..." tabindex="3">
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" name="diadiem">
                                            <option value="0">Tỉnh / Thành</option>
                                            <?php
                                            foreach ($diadiem as $temp) {
                                                print "<option value='" . $temp['id'] . "'>" . $temp['ten'] . "</option>";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Ngày nhận phòng: </label>
                                        <input type="date" name="display_name" id="diemden" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Ngày trả phòng: </label>
                                        <input type="date" name="display_name" id="diemden" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Loại phòng: </label>
                                        <select name="loaiphong" class="form-control">
                                            <option value="">Tất cả</option>
                                            <?php
                                            foreach ($loaiphong as $temp) {
                                                print "<option>" . $temp['loaiphong'] . "</option>";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Số phòng: </label>
                                        <input type="number" name="display_name" id="diemden" class="form-control" value="1">
                                    </div>
                                </div>
                            </div>
                            <hr class="colorgraph">
                            <input type="submit" value="Tìm kiếm" class="btn btn-success btn-block btn-lg" tabindex="7">
                        </form>
                    </div>
                    <div class="col-md-6">
                        <h2>Khách sạn giá tốt nhất từ ​​tất cả các địa điểm du lịch hàng đầu</h2>
                        <img src="images/hc_max_home_reassurance.png">
                    </div>
                </div>
            </div>
        </div>
        <div class="reason">
            <div class="container">
                <div class="row">
                    <h2>Tại sao nên chọn dịch vụ của chúng tôi</h2>
                    <div class="col-md-4">
                        <img src="images/final_price-7c1a1bc972bbdb9f6c5ba4dc8af472201.png">
                        <h3>Thuận tiện & Toàn diện</h3>
                        <p>Nền tảng hoàn chỉnh cho phép bạn đặt vé máy bay và phòng khách sạn ở Đông Nam Á, đồng thời tiết kiệm nhiều hơn.</p>
                    </div>
                    <div class="col-md-4">
                        <img src="images/most_reliable-005ffc61873e84d2a8c5aa1e1dd8bec31.png">
                        <h3>Giá cạnh tranh</h3>
                        <p>Giá vé máy bay và phòng khách sạn cạnh tranh nhất khu vực Đông Nam Á.</p>
                    </div>
                    <div class="col-md-4">
                        <img src="images/easy_booking-d33df9096f6eedf56fca4857de205eb71.png">
                        <h3>Giá trung thực</h3>
                        <p>Không chi phí ẩn. Giá bạn trả là giá bạn thấy.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="gallery">
            <h2>Những địa điểm du lịch hàng đầu</h2>
            <div class="col-md-6">
                <div class="row">
                    <img src="images/hue.jpg" style="width: 100%">
                    <h3>Huế</h3>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <img src="images/hanoi.jpg" style="width: 100%">
                    <h3>Hà Nội</h3>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <img src="images/halong.jpg" style="width: 100%">
                    <h3>Hạ Long</h3>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <img src="images/nhatrang.jpg" style="width: 100%">
                    <h3>Nha Trang</h3>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <img src="images/hoian.jpg" style="width: 100%">
                    <h3>Hội An</h3>
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
