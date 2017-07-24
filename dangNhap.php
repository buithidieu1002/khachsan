<!DOCTYPE html>
<html lang="en">
    <head> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>

        <title>Đăng nhập</title>
        <?php
        session_start();
        if (isset($_SESSION['admin'])) {
            header("Location: /hotel");
        }
        ?>
    </head>
    <body>
        <?php
        $error = null;
        if (isset($_POST['dangNhap'])) {
            if ($_POST['taikhoan'] == 'admin' && $_POST['matKhau'] == 'admin') {
                $_SESSION['admin'] = true;
                header("Location: /hotel");
            } else {
                $error = "Sai thông tin đăng nhập!";
            }
        }
        ?>
        <div class="container">
            <div class="row main">
                <?php if ($error != null): ?>
                    <div class="alert alert-danger"><?= $error ?></div>
                <?php endif ?>  
                <div class="main-login main-center">
                    <h5>Đăng nhập</h5>

                    <form class="" method="post" action="#">
                        <div class="form-group">
                            <label class="cols-sm-2 control-label">Tài khoản</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="taikhoan"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password" class="cols-sm-2 control-label">Mật khẩu</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="matKhau"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group ">
                            <button type="submit" name="dangNhap" id="button" class="btn btn-primary btn-lg btn-block login-button">Đăng nhập</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>


    </body>
</html>