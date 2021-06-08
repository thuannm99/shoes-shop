<%@page import="other.Other"%>
<%@page import="java.util.List"%>
<%@page import="model.TempProduct"%>
<%@page import="model.User"%>
<%@page import="connectionjdbc.product.ProductService"%>
<%@page import="connectionjdbc.user.UserService"%>
<%@page import="model.Product"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MiaShoes</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" 
              integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="buyNow.css">
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
                    <div class="search" style="height: 100px">
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
                    <div class="product" style="margin-top: 0px;">
                        <a href="YourCart.jsp" class="cart">
                            <i class="fa fa-shopping-cart" aria-hidden="true" id="cart"></i>
                            <ul>
                                <li>Giỏ hàng</li>
                                <li>${amount} Sản phẩm</li>
                            </ul>
                        </a>
                    </div>
                </div>
                <div class="logout" style="height:100px; margin-top:28px;margin-left:10px">
                    <a href="/ShoeShop/user/LogOut.jsp">Đăng xuất</a>
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
                        <a href="/ShoeShop/Search.jsp?str=sales&type=4" class="item1">SALES</a>
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
        <%
            User user = (User) session.getAttribute("currentUser");
            request.setAttribute("u", user);
            String id = request.getParameter("id");
            if(id != null){
                Product product = new ProductService().getProductById(Integer.parseInt(id));
                user.addTempProduct(new TempProduct(Integer.parseInt(id), product.getName(), 
                        product.getImg1(), product.getPrice()));
            }
            List<TempProduct> list = user.getTemps();
            String[] size = request.getParameterValues("size");
            if(size != null){
                for(int i = 0; i < size.length ;i++){
                    list.get(i).setSize(Integer.parseInt(size[i]));
                }
            }
            request.setAttribute("list", list);
            int amount = list.size();
            request.setAttribute("amount", amount);
            
            String discountStr = request.getParameter("discount");
            int discount = 0;
            if(discountStr != null){
                discount = Integer.parseInt(discountStr);
                request.setAttribute("discount", discount);
            }
            int price = 0;
            for(TempProduct p : list){
                price += p.getPrice();
            }
            String cost = Other.displayMoney( (int) price);
            request.setAttribute("cost", cost);
        %>
        <br>
        <a href="YourCart.jsp" style="font-size: 20px;color: blue;margin-left: 100px;">
            Quay lại giỏ hàng
        </a>
        <br><br>
        <div class="parent">
            <div class="left">
                <form action="SendMail3.jsp" method="post" name="buy">
                    <label>Họ và tên</label>
                    <input type="text" name="name" value="${u.name}"> <br><br>
                    <label>Email</label>
                    <input type="email" name="email" value="${u.email}"> <br><br>
                    <label>Số điện thoại</label>
                    <input type="number" name="phone_number" value="${u.phoneNumber}"><br><br>
                    <label>Địa chỉ</label>
                    <input type="text" name="address" value="${u.address}"><br>
                    <label style="font-size: 13px;margin-left: 200px;">
                        Yêu cầu quý khách điền đúng địa chỉ để thuận tiện cho việc vận chuyển
                    </label>
                    <br> <br>
                </form>
                    <a href="MyAccount.jsp"><button style="background-color:black; color: white; border: solid 1px #ccc; border-radius: 5px; height: 40px; width: 80px;" onclick="alert('Quý khách đã đặt đơn hàng thành công. Chân thành cảm ơn quý khách đã đặt mua sản phẩm ở cửa hàng của chúng tôi.')">Đặt hàng</button></a>
            </div>
            
            <div class="right">
                <div class="block">
                    <h3>Đơn hàng (${amount} sản phẩm)</h3>
                    <hr style="width: 100%">
                    <%
                        for(TempProduct t : list){
                            request.setAttribute("name", t.getName());
                            request.setAttribute("img", t.getImg());
                            request.setAttribute("size", t.getSize());
                            request.setAttribute("price", Other.displayMoney((int)(t.getPrice())));     
                    %>
                    <div class="product">
                        <div class="img">
                            <img src="${img}">
                        </div>
                        <div class="name">
                            <div>
                              ${name}  
                            </div>
                            ${size}
                        </div>
                        <div class="price">
                            ${price} VND
                        </div>
                    </div>
                    <br>
                    <%
                        }
                    %>
                    <hr>    
                    <form action="CheckDiscountCode.jsp" method="post">
                        <input type="text" name="code" placeholder="Nhập mã giảm giá" 
                               style="width:270px;height: 50px; ">
                        <input type="submit" value="Áp dụng" 
                               style="width:80px;height: 50px;background-color: #3498db;color: white ">
                    </form>
                    <hr>
                    <div class="below">
                        <div class="left1" style="text-align: left">
                            <span >
                                Đơn giá
                            </span>
                        </div>
                        <div class="right1" style="text-align: right">
                            <span>
                                ${cost}
                            </span>
                        </div>
                    </div>
                    <div class="below">
                        <div class="left1" style="text-align: left">
                            <span >
                                VAT
                            </span>
                        </div>
                        <div class="right1" style="text-align: right">
                            <span >
                                +10%
                            </span>
                        </div>
                    </div>
                    <c:if test="${discount != null && discount != 0}">
                        <div class="below">
                            <div class="left1" style="text-align: left">
                                <span >
                                    Mã giảm giá
                                </span>
                            </div>
                            <div class="right1" style="text-align: right;color: red">
                                <span>
                                    -${discount}%
                                </span>
                            </div>
                        </div>
                    </c:if> 
                    <hr>
                    <%
                        double costOfBill = price * (100 + 10 - discount) / 100;
                        String costBill = Other.displayMoney((int)costOfBill);
                        request.setAttribute("costOfBill", costBill);
                    %>
                    <div class="below">
                        <div class="left1" style="text-align: left">
                            <span >
                                Tổng cộng
                            </span>
                        </div>
                        <div class="right1" style="text-align: right">
                            <span style="font-size: 20px;">
                                ${costOfBill}
                            </span>
                        </div>
                    </div>      
                </div>
            </div>
        </div>

        
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
    </body>
</html>
