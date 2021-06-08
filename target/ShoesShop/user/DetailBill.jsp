<%@page import="model.User"%>
<%@page import="connectionjdbc.user.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <title>MiaShoes</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" 
              integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
        <!-- Bootstrap CSS -->

        <link rel="stylesheet" href="viewDetailBill.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="header">
        <div class="package">
            <div class="shop_name">
                <a href="/ShoeShop/home.jsp"><h1>MiaShoes</h1></a>
            </div>
            <div class="box_search">
                <span>Tìm Kiếm Sản Phẩm</span>
                <div class="search">
                    <form action="/ShoeShop/Search.jsp?type=1" method="post">
                        <input type="search" name="str" placeholder="Search">
                        <input type="submit" value="Tìm kiếm" >
                    </form>
                </div>
            </div>
            <!-- end-search -->
            <div class="infor">
                <a href="MyAccount.jsp" class="account">
                </a>
                <div class="product">
                    <a href="YourCart.jsp" class="cart">
                        <i class="fa fa-shopping-cart" aria-hidden="true" id="cart"></i>
                        <ul>
                            <li>Giỏ hàng</li>
                            <li>${amount} Sản phẩm</li>
                        </ul>
                    </a>
                </div>
                <div class="logout">
                    <a href="/ShoeShop/user/LogOut.jsp">Đăng xuất</a>
                </div>
            </div>
        </div>
    </div>
        <!-- end-header -->
        <div class="menu">
            <div class="package">
                <ul class="menu-ngang">
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp?str=nike&type=2" class="item1">NIKE</a>
                        <ul id="menu11">
                            <li><a href="/ShoeShop/Search.jsp?str=nike&type=2" id="item2">Air Force 1</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=nike&type=2" id="item2">Air Jordan1</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=nike&type=2" id="item2">Air Max 1</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=nike&type=2" id="item2">Air Max 197</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=nike&type=2" id="item2">Air Max 270</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=nike&type=2" id="item2">Air Max 97</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=nike&type=2" id="item2">Presto</a></li>
                        </ul>
                    </li>
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp?str=adidas&type=2" class="item1">ADIDAS</a>
                        <ul id=menu11>
                            <li><a href="/ShoeShop/Search.jsp?str=adidas&type=2" id="item2">Stan Smith</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=adidas&type=2" id="item2">SuperStar</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=adidas&type=2" id="item2">Derup Runner</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=adidas&type=2" id="item2">Tubular Doom</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=adidas&type=2" id="item2">Falcom</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=adidas&type=2" id="item2">Pod</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=adidas&type=2" id="item2">Young1</a></li>
                        </ul>
                    </li>
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp?str=luxury&type=2" class="item1">LUXURY</a>
                        <ul id=menu11 style="height: 100px;">
                            <li><a href="/ShoeShop/Search.jsp?str=luxury&type=2" id="item2">Balenciaga</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=luxury&type=2" id="item2">Gucci</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=luxury&type=2" id="item2">MC Queen</a></li>
                        </ul>
                    </li>
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp?str=vans&type=2" class="item1">VANS</a>
                        <ul id=menu11 style="height: 150px;">
                            <li><a href="/ShoeShop/Search.jsp?str=vans&type=2" id="item2">Style 36</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=vans&type=2" id="item2">Slip on</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=vans&type=2" id="item2">Old Skool</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=vans&type=2" id="item2">Era 95</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=vans&type=2" id="item2">Sk8</a></li>
                        </ul>
                    </li>
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp?str=convers&type=2" class="item1">CONVERS</a>
                        <ul id=menu11 style="height: 80px;">
                            <li><a href="/ShoeShop/Search.jsp?str=convers&type=2" id="item2">1970s</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=convers&type=2" id="item2">Chuck 70s x CDG</a></li>
                        </ul>
                    </li>
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp?str=fila&type=2" class="item1">FILA</a>
                        <ul id=menu11 style="height: 80px;">
                            <li><a href="/ShoeShop/Search.jsp?str=fila&type=2" id="item2">Fila ray</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=fila&type=2" id="item2">Fila Disruptor II</a></li>
                        </ul>
                    </li>
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp?str=the10&type=2" class="item1">THE10</a>
                    </li>
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp?str=fashion&type=2" class="item1">FASHION</a>
                        <ul id=menu11 style="height: 120px;">
                            <li><a href="/ShoeShop/Search.jsp?str=fashion&type=2" id="item2">Áo Phông</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=fashion&type=2" id="item2">Áo Sơ Mi</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=fashion&type=2" id="item2">Quần Jeans</a></li>
                            <li><a href="/ShoeShop/Search.jsp?str=fashion&type=2" id="item2">Quần Âu</a></li>
                        </ul>
                    </li>
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp&type=4" class="item1">SALES</a>
                    </li>
                    <li id="menu1">
                        <a href="/ShoeShop/Search.jsp?str=shock&type=3" class="item1">PHỤ KIỆN</a>
                    </li>
                    <li id="menu1">
                        <a href="" class="item1">NHẬN THÔNG BÁO SALES</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- end-menu -->
        <br> <br>
            <%
            User user = (User) session.getAttribute("currentUser");
            request.setAttribute("u", user);
        %>
        <br><br><br>
        <div>
            <div style="width:60%; float:left;">
                <div>
                    <h3 style="text-align: center;">Nội dung đơn hàng</h3><br>
                    <div style="width:30%; float:left; margin-left: 100px;">
                        <img src="https://res.cloudinary.com/hoangghiepp1302/image/upload/v1568878555/shoes%20shop/vans_orange_1_x8pmwo_dh1wgq.jpg" style="width: 200px;">
                    </div>
                    <div class="width:70%; float:right; margin-left: 50px;">
                        <label style="font-weight: bold;"> Tên sản phẩm: </label> <span style="font-size: larger">Vans Style 36 Orange</span><br>
                        <label style="font-weight: bold;"> Size: </label> <span style="font-size: larger">36</span><br>
                        <label style="font-weight: bold;"> Số lượng: </label> <span style="font-size: larger">1</span><br>

                    </div>
                </div>
            </div>
            <div style="width:35%; float:right;">
                <div>
                    <h3>Thông tin nhận hàng</h3><br>
                    <div>
                        <label style="font-weight: bold;">Họ và tên: </label> <span style="font-size: larger">${u.name}</span><br>
                        <label style="font-weight: bold;">Email: </label> <span style="font-size: larger">${u.email}</span><br>
                        <label style="font-weight: bold;">Số điện thoại: </label> <span style="font-size: larger">${u.phoneNumber}</span><br>
                        <label style="font-weight: bold;">Địa chỉ: </label> <span style="font-size: larger">${u.address}</span><br>
                    </div>
                </div>
            </div>
        </div>
        <div>

            <div style="margin-left: 375px;">
                <label> -----------------------</label><br>
                <label style="font-weight: bold;"> Tổng tiền: </label> <span style="font-size: larger">794,750đ</span> <br>
                <label style="font-weight: bold;"> Ngày đặt đơn: </label> <span style="font-size: larger">09/06/2021</span> <br>
                <label style="font-weight: bold;"> Tình trạng: </label> <span style="font-size: larger">Chờ xác nhận</span> <br>
            </div>
        </div>

        <br><br>
            <div class="information">
                <div class="package">
                    <div class="information1">
                        <h1>VỀ CỬA HÀNG</h1>
                        <span>MiaShoes chuyên Rep 1:1 cao cấp nhất thị trường.</span>
                        <div style="width:100%; height: 0.1em;background:rgb(181, 178, 178); margin-top:10px;margin-bottom: 10px;"></div>
                        <ul>
                            <li>Địa chỉ: Số 2 Trần Đại Nghĩa, Hà Nội, Việt Nam</li>
                            <li>
                                <a href="mailto:ngonam21021999@gmail.com">Email:ngonam21021999@gmail.com</a>
                            </li>
                            <li>
                                <a href="tel:123456789">Điện thoại:123456789</a>
                            </li>
                            <li><a href="">Website:miashoes.vn</a></li>
                        </ul>
                    </div>
                    <div class="information2">
                        <h1>THÔNG TIN</h1>
                        <ul>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Trang chủ</a></li>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Giới thiệu</a></li>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Sản phẩm</a></li>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Khuyến mại</a></li>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Tin tức</a></li>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Liên hệ</a></li>
                        </ul>
                    </div>
                    <div class="information2" style="">
                        <h1>HƯỚNG DẪN & CHÍNH SÁCH</h1>
                        <ul>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Hướng dẫn mua hàng</a></li>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Thẻ Thành Viên</a></li>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Ship COD</a></li>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Chính sách bảo hành</a></li>
                            <li><i class="fa fa-chevron-right" aria-hidden="true"></i><a href="">Chính sách đổi trả & hoàn tiền</a></li>
                        </ul>
                    </div>
                    <div class="payment">
                        <h1>PHƯƠNG THỨC THANH TOÁN</h1>
                        <ul>
                            <li><img src="css/pay1.png" alt=""></li>
                            <li><img src="css/pay2.png" alt=""></li>
                            <li><img src="css/pay3.png" alt=""></li>
                            <li><img src="css/pay4.png" alt=""></li>
                            <li><img src="css/pay5.png" alt=""></li>
                        </ul>
                        <span><img src="css/cn.png" alt="" style="width:150px;"></span>
                    </div>
                </div>
            </div>
            <!-- end-information -->
            <div class="banner-end">
                <div class="package">
                    <div class="banner-left" style="color: black;">© Bản quyền thuộc về <span style="color: white;">MiaShoe</span></div>
                    <div class="banner-right">
                        <ul>
                            <li><a href=""><i class="fa fa-facebook" aria-hidden="true" title="facebook"></i></a></li>
                            <li><a href=""><i class="fa fa-instagram" aria-hidden="true" title="instagram"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus" aria-hidden="true" title="google"></i></a></li>
                            <li><a href=""><i class="fa fa-twitter" aria-hidden="true" title="twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- end-page -->
</html>
