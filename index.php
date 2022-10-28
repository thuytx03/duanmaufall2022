<?php
session_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
include "model/pdo.php";
include "model/danhmuc.php";
include "model/sanpham.php";
include "model/cart.php";
include "global.php";
include "model/taikhoan.php";
include "view/header.php";

if (!isset($_SESSION['mycart'])) $_SESSION['mycart'] = [];

$spnew = loadall_sanpham_trangchu();
$dsdm = loadall_danhmuc();
$dstop10 = loadall_sanpham_top10();



if (isset($_GET['act']) && ($_GET['act'] != "")) {
    $act = $_GET['act'];
    switch ($act) {

        case 'sanpham':
            //Tìm kiếm sản phẩm
            if (isset($_POST['kyw']) && ($_POST['kyw'] != "")) {
                $kyw = $_POST['kyw'];
            } else {
                $kyw = "";
            }
            //Load danh mục sản phẩm
            if (isset($_GET['iddm']) && ($_GET['iddm'] > 0)) {
                $iddm = $_GET['iddm'];
            } else {
                $iddm = 0;
            }
            $dssp = loadall_sanpham($kyw, $iddm);
            $tendm = load_ten_dm($iddm);
            include "view/sanpham.php";
            break;


            //Sản phẩm chi tiết
        case 'sanphamct':
            if (isset($_GET['idsp']) && ($_GET['idsp'] > 0)) {
                $id = $_GET['idsp'];
                $onesp = loadone_sanpham($id);
                extract($onesp);
                $sp_cungloai = load_sanpham_cungloai($id, $iddm);
                $updateluotxem = update_luotxem($id, $luotxem);
                include "view/sanphamct.php";
            } else {
                include "view/home.php";
            }

            break;
        case 'dangnhap':
            if (isset($_POST['dangnhap']) && ($_POST['dangnhap'])) {
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $kq = checkuser($user, $pass);
                $role = $kq['role'];

                // $checkuser=checkuser($user, $pass);
                // $role=$checkuser[0]['role'];

                //  if(is_array($kq)){
                //      $_SESSION['user']=$kq;
                //      // $thongbao="Đã đăng nhập thành công";
                //      header('location:index.php');
                //     }else{
                //         //header('location:index.php?act=dangnhap');
                //      $thongbao="Tài khoản không tổn tại. Vui lòng kiểm tra lại"; 


                //     }    


                if ($role == 1) {
                    $_SESSION['role'] = $role;
                    header('location:admin/index.php');
                } else if (is_array($kq)) {
                    $_SESSION['role'] = $role;
                    $_SESSION['id'] = $kq['id'];
                    $_SESSION['user'] = $kq['user'];
                    //$thongbao="Đã đăng nhập thành công";
                    header('location:index.php');
                    // $thongbao = "Tài khoản không tổn tại. Vui lòng kiểm tra lại";
                } else {
                    //$thongbao = "Tài khoản không tổn tại. Vui lòng kiểm tra lại";
                    header('location:index.php?act=dangnhap');
                }
            }
            include "./view/taikhoan/dangnhap.php";
            break;
        case 'dangky':
            if (isset($_POST['dangky']) && ($_POST['dangky'])) {
                $name = $_POST['name'];
                $email = $_POST['email'];
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                insert_taikhoan($name, $email, $user, $pass);
                $thongbao = "Đã đăng ký thành công. Vui lòng đăng nhập để thực hiện chúc năng";
            }
            include "./view/taikhoan/dangky.php";
            break;



        case 'edit_taikhoan':
            if (isset($_POST['capnhat']) && ($_POST['capnhat'])) {
                $name = $_POST['name'];
                $email = $_POST['email'];
                $address = $_POST['address'];
                $tel = $_POST['tel'];
                $id = $_POST['id'];
                update_taikhoan($id, $email, $name, $address, $tel);

                //$thongbao="Cập nhật thành công";
                //$_SESSION['user'] = checkuser($user, $pass);
                header('location:index.php?act=edit_taikhoan');
            }

            include "./view/taikhoan/edit_taikhoan.php";
            break;

        case 'quenmk':
            if (isset($_POST['guiemail']) && ($_POST['guiemail'])) {
                $email = $_POST['email'];
                $checkemail = checkemail($email);
                //$thongbao="Cập nhật thành công";
                if (is_array($checkemail)) {
                    $thongbao = "Mật khẩu của bạn là: " . $checkemail['pass'];
                } else {
                    $thongbao = "Email này không tồn tại";
                }
            }
            include "./view/taikhoan/quenmk.php";
            break;

        case 'doimk':
            if (isset($_POST['doimk'])) {
                $user = $_POST['user'];
                $passcu = $_POST['passcu'];
                $passmoi = $_POST['passmoi'];
                $checkdoimk = checkdoimk($user, $passcu, $passmoi);
                if (is_array($checkdoimk)) {
                    $thongbao = "Đổi mật khẩu thành công";
                } else {
                    $thongbao = "Tài khoản mật khẩu không tồn tại";
                }
            }
            include "./view/taikhoan/doimk.php";
            break;



        case 'thoat':

            // unset($_SESSION['user']);

            session_unset();
            header('location:index.php');
            // include "view/thoat.php";
            break;

        case 'addtocart':

            if (isset($_POST['addtocart']) && ($_POST['addtocart'])) {
                $id = $_POST['id'];
                $name = $_POST['name'];
                $img = $_POST['img'];
                $price = $_POST['price'];
                $soluong = 1;
                $fg = 0;
                $thanhtien = $soluong * $price;
                // tìm và so sánh sp trong giỏ hàng
                if (isset($_SESSION['mycart']) && (count($_SESSION['mycart']) > 0)) {
                    $i = 0;
                    foreach ($_SESSION['mycart'] as $sp) {
                        if ($sp[0] == $id) {
                            //cập nhật mới số lượng
                            $soluong += $sp[4];
                            $fg = 1;
                            //cập nhật số lượng mới vào giỏ hàng
                            $_SESSION['mycart'][$i][4] = $soluong;
                            break;
                        }
                        $i++;
                    }
                }
                //khi số lượng ban đầu không thay đổi thì thêm mới sp vào giỏ hàng
                if ($fg == 0) {
                    $spadd = [$id, $name, $img, $price, $soluong, $thanhtien];
                    //$sp=array($id,$tensp,$img,$gia,$sl);
                    array_push($_SESSION['mycart'], $spadd);
                }
            }
            //$muahang=loadone_sanpham($id);
            include "view/cart/viewcart.php";
            break;



        case 'delcart':
            if (isset($_GET['idcart'])) {
                array_splice($_SESSION['mycart'], $_GET['idcart'], 1);
            } else {
                $_SESSION['mycart'] = [];
            }
            header('location:index.php?act=viewcart');
            break;

        case 'viewcart':
            include "view/cart/viewcart.php";
            break;


        case 'bill':
            // header('location:index.php?act=bill');

            include "view/cart/bill.php";
            break;

        case 'billconfirm':
            if (isset($_POST['dongydathang']) && ($_POST['dongydathang'])) {
                $name = $_POST['name'];
                $email = $_POST['email'];
                $address = $_POST['address'];
                $tel = $_POST['tel'];
                $pttt = $_POST['pttt'];
                $ngaydathang = date('h:i:sa d/m/Y');
                $tongdonhang = tongdonhang();
                $idbill = insert_bill($name, $email, $address, $tel, $pttt, $ngaydathang, $tongdonhang);

                //insert into cart: $_SESSION['mycart'] $ idbill
                if (isset($_GET['idsp']) && (isset($_SESSION['muahang']))) {
                    $cart = $_SESSION['muahang'];
                    insert_cart($_SESSION['user'], $cart['id'], $cart['name'], $cart['img'], $cart['price'], $cart['soluong'], $cart['luotxem'], $idbill);
                } else {
                    foreach ($_SESSION['mycart'] as $cart) {
                        # code...
                        insert_cart($_SESSION['user'], $cart[0], $cart[2], $cart[1], $cart[3], $cart[4], $cart[5], $idbill);
                    }
                }


                $_SESSION['mycart'] = [];
            }
            $bill = loadone_bill($idbill);
            $billct = loadall_cart($idbill);
            include "view/cart/billcomfirm.php";
            break;

        case 'chinhsach':
            include "view/chinhsach.php";
            break;
        case 'gioithieu':
            include "view/gioithieu.php";
            break;

        case 'lienhe':
            include "view/lienhe.php";
            break;
        default:
            include "view/home.php";
            break;
    }
} else {
    include "view/home.php";
}
include "view/footer.php";
