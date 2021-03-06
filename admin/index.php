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
        <?php include 'database.php' ?>
        <?php $dsKhachsan = dsKhachSan(); ?>
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

                <h2>Danh sách Khách sạn</h2>
                <table class="table">
                    <tr>
                        <th>Địa Điểm</th>
                        <th style="width: 200px">Hình ảnh</th>
                        <th>Tên Khách sạn</th>
                        <th>Địa chỉ</th>
                        <th></th>
                    </tr>
                    <?php if ($dsKhachsan != null): ?>
                        <?php foreach ($dsKhachsan as $khachsan): ?>
                            <tr>
                                <td><?= $khachsan['diadiem'] ?></td>
                                <td><img src="<?= $khachsan['hinhanh'] ?>" width="200"></td>
                                <td> <?= $khachsan['ten'] ?> </td>
                                <td> <?= $khachsan['diachi'] ?> </td>
                                <td>
                                    <a href="/hotel/admin/edit.php?id=<?= $khachsan['id'] ?>"><i class="fa fa-2x fa-pencil-square-o" aria-hidden="true"></i></a>
                                    <a href="/hotel/admin/edit.php?delete=<?= $khachsan['id'] ?>" class="delete"><i class="fa fa-2x fa-trash-o" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    <?php endif ?>
                </table>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script>
            $(".delete").click(function () {
                return confirm("Bạn có muốn xóa Khách sạn?");
            });
        </script>
    </body>
</html>