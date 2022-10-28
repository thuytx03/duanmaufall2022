<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="view/css/index.css">

</head>

<body>


    <div class="container">
        <header>
            <div class="logo">
                <a href="index.php"><img src="view/image/z3384791114584_55229ecac67431c0e9be60baf0969cce.jpg" width="200px" alt=""></a>
            </div>
            <!-- Form tìm kiếm -->

            <div class="timkiem">
                <form action="index.php?act=sanpham" method="post">
                    <input type="text" name="kyw" placeholder="  Tìm kiếm sản phẩm...">
                    <!-- <input type="submit" name="timkiem" value="Tìm kiếm"> -->
                    <button type="submit" name="timkiem">Tìm kiếm</button>
                </form>
            </div>



            <!-- Login -->


            <?php
            if (isset($_SESSION['user'])) {
                // extract($_SESSION['user']);
            ?>
                <div class="login">
                    <a href="index.php?act=dangnhap"><img src="view/image/emoji.png" alt=""></a>
                </div>

            <?php } else {  ?>
                <div class="login">
                    <a href="index.php?act=dangnhap"><img src="view/image/login.png" alt=""></a>
                </div>
            <?php } ?>


            <!-- Giỏ hàng -->
          
       
                <div class="giohang">
                    <a href="index.php?act=addtocart"><img src="view/image/shopping-cart.png" alt=""></a>
                </div>
           






        </header>

        <nav>
            <ul>
                <ul>
                    <li><a href="index.php">Trang chủ</a></li>
                    <li><a href="index.php?act=sanpham">Cửa hàng</a></li>
                    <li><a href="index.php?act=gioithieu">Giới thiệu</a></li>
                    <li><a href="index.php?act=chinhsach">Chính sách</a></li>
                    <li><a href="index.php?act=lienhe">Liên hệ</a></li>
                </ul>
            </ul>
        </nav>