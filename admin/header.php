<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản trị website-Admin</title>
    <link rel="stylesheet" href="../view/css/index.css">
</head>

<body>
    <div class="container">
        <header>
            <div class="logo">
                <img src="../view/image/z3384791114584_55229ecac67431c0e9be60baf0969cce.jpg" width="200px" alt="">
            </div>
            <!-- Form tìm kiếm -->

            <div class="timkiem">
                <form action="">
                    <input type="text" placeholder="  Tìm kiếm sản phẩm...">
                    <button>Tìm kiếm</button>
                </form>
            </div>


            <!-- Login -->
            <?php
            if (isset($_SESSION['user'])) {
                //extract($_SESSION['user']);
            ?>
                <div class="login">
                    <a href="index.php?act=dangnhap"><img src="../view/image/emoji.png" alt=""></a>
                </div>

            <?php } else {  ?>
                <div class="login">
                    <a href="index.php?act=dangnhap"><img src="../view/image/login.png" alt=""></a>
                </div>
            <?php } ?>

            <!-- Giỏ hàng -->
            <div class="giohang">
                <a href="#"><img src="../view/image/shopping-cart.png" alt=""></a>
            </div>


        </header>

        <nav>
            <ul>
                <ul>
                    <li><a href="index.php">Trang chủ</a></li>
                    <li><a href="index.php?act=adddm">Danh mục</a></li>
                    <li><a href="index.php?act=addsp">Sản phẩm</a></li>
                    <li><a href="index.php?act=dskh">Khách hàng</a></li>
                    <li><a href="index.php?act=dsbl">Bình luận</a></li>
                    <li><a href="index.php?act=listbill">Danh sách đơn hàng</a></li>
                    <li><a href="index.php?act=thongke">Thống kê</a></li>
                </ul>
            </ul>
        </nav>

        <style>
            nav {

                text-align: center;
                height: 50px;
                line-height: 50px;
                background-color: rgb(226, 226, 226);
                margin-bottom: 5px;
                margin-bottom: 70px;
            }

            nav ul li {
                display: inline-block;
                border: 1px solid gray;
                background-color: white;
                border-radius: 5px;
                width: 250px;
                height: 40px;
                line-height: 35px;
            }

            nav ul li:hover {
                background-color: beige;
            }

            nav li a {
                text-decoration: none;
                color: black;
                padding: 0px 50px 0px 50px;
            }

            nav li a:hover {
                font-weight: bold;
            }
        </style>