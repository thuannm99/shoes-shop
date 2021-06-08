<%@page import="other.Other"%>
<%@page import="model.Bill"%>
<%@page import="java.util.List"%>
<%@page import="connectionjdbc.bill.BillTransaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MiaShoes</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" 
              integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="listBill.css">
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
                    <a href="/ShoeShop/user/MyAccount.jsp" class="account">

                    </a>
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
                        <a href="" class="item1">SALES</a>
                    </li>
                    <li id="menu1">
                        <a href="" class="item1">PHỤ KIỆN</a>
                    </li>
                    <li id="menu1">
                        <a href="" class="item1">NHẬN THÔNG BÁO SALES</a>
                    </li>
                </ul>
            </div>
        </div>

        <%
            List<Bill> bills = new BillTransaction().getListApproving();
        %>
        <br><br>
        <div style="margin-left: 50px;">
            <div>
                <a href="/ShoeShop/user/MyAccount.jsp"><i class="fas fa-bars" aria-hidden="true"></i> Trang quản lý</a>
                <span><i class="fa fa-chevron-right" aria-hidden="true"></i>Hóa đơn</span>
            </div>
        </div>
        <br><br>
        <h3 style="text-align: center">
            Danh sách các hóa đơn đang chờ được xét duyệt
        </h3>
        <br><br>
        <div class="cen">
            <table style="font-family: Arial, Helvetica, sans-serif;border-collapse: collapse;width: 95%;margin:  0px 32px;">
            <tr>
                <th style="border: 1px solid #ddd;padding: 8px; background-color: #4CAF50; color: white;">STT</th>
                <th style="border: 1px solid #ddd;padding: 8px; background-color: #4CAF50; color: white;">Tên khách hàng </th>
                <th style="border: 1px solid #ddd;padding: 8px; background-color: #4CAF50; color: white;">Tổng tiền </th>
                <th style="border: 1px solid #ddd;padding: 8px; background-color: #4CAF50; color: white;">Ngày</th>
                <th style="border: 1px solid #ddd;padding: 8px; background-color: #4CAF50; color: white;">Tình trạng</th>
                <th style="border: 1px solid #ddd;padding: 8px; background-color: #4CAF50; color: white;">Tùy chọn </th>
            </tr>

            <tr>
                <td style="border: 1px solid #ddd;padding: 8px;">1</td>
                <td style="border: 1px solid #ddd;padding: 8px;">user2</td>
                <td style="border: 1px solid #ddd;padding: 8px;">925000</td>
                <td style="border: 1px solid #ddd;padding: 8px;">07/06/2021</td>
                <td style="border: 1px solid #ddd;padding: 8px;">Duyệt đơn</td>
                <td style="border: 1px solid #ddd;padding: 8px;">
                    <a href="DetailBill.jsp?id=1"><button style="background-color: white; border: solid 1px #ccc; border-radius: 5px;">Chi tiết</button></a>
                </td>
            </tr>

            <tr>
                <td style="border: 1px solid #ddd;padding: 8px;">2</td>
                <td style="border: 1px solid #ddd;padding: 8px;">user2</td>
                <td style="border: 1px solid #ddd;padding: 8px;">754000</td>
                <td style="border: 1px solid #ddd;padding: 8px;">07/06/2021</td>
                <td style="border: 1px solid #ddd;padding: 8px;">Chờ xác nhận</td>
                <td style="border: 1px solid #ddd;padding: 8px;">
                    <a href="DetailBill.jsp?id=2"><button style="background-color: white; border: solid 1px #ccc; border-radius: 5px;">Chi tiết</button></a>
                </td>
            </tr>

            <tr>
                <td style="border: 1px solid #ddd;padding: 8px;">3</td>
                <td style="border: 1px solid #ddd;padding: 8px;">user1</td>
                <td style="border: 1px solid #ddd;padding: 8px;">794750</td>
                <td style="border: 1px solid #ddd;padding: 8px;">09/06/2021</td>
                <td style="border: 1px solid #ddd;padding: 8px;">Chờ xác nhận</td>
                <td style="border: 1px solid #ddd;padding: 8px;">
                    <a href="DetailBill.jsp?id=3"><button style="background-color: white; border: solid 1px #ccc; border-radius: 5px;">Chi tiết</button></a>
                </td>
            </tr>
            </table>
        </div>

        <br><br><br><br><br><br>
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
        <!-- end-banner -->
    </body>
</html>
