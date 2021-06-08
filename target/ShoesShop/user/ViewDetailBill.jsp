<%@page import="other.Other"%>
<%@page import="java.util.List"%>
<%@page import="model.User"%>
<%@page import="connectionjdbc.bill.BillTransaction"%>
<%@page import="connectionjdbc.product.ProductService"%>
<%@page import="model.ProductInBill"%>
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
        <script src="https://code.jquery.com/jquery-2.2.4.js" charset="utf-8"></script>
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="viewDetailBill.css">
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
                    <div class="search" style="height: 100px;margin-top: 15px;">
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
                </div>
                <div class="logout" style="height:100px; margin-top:28px;margin-left:10px">
                    <a href="/ShoeShop/LogOut.jsp">Đăng xuất</a>
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
            List<ProductInBill> list = new BillTransaction().getDetaiAllBill(user.getId());
        %>
        <div class="table"><div class="table">
                <div class="head">
                    <div style="width:25%;text-align: center;">Sản phẩm</div>
                    <div style="width:30%;text-align: center;">Thông tin sản phẩm</div>
                    <div style="width:15%;text-align: center;">Đơn giá</div>
                    <div style="width:10%;text-align: center;">Size</div>   
                    <div style="width:20%;text-align: center;">Ngày mua</div>
                </div>
                <div class="list">
                    <%
                        for (ProductInBill p : list) {
                            request.setAttribute("img", p.getProduct().getImg1());
                            request.setAttribute("name", p.getProduct().getName());
                            request.setAttribute("date", p.getDate());
                            request.setAttribute("size", p.getSize());
                            String price = Other.displayMoney((int)p.getProduct().getPrice());
                            request.setAttribute("price", price);
                    %>
                    <div class="product" style="height:200px;">
                        <div style="width:25%">
                            <img src="${img}" width="250px" style="margin-left:30px">
                        </div>
                        <div style="width:30%;text-align: center;vertical-align: middle;
                             line-height: 170px;font-size:20px">${name}</div>
                        <div style="width:15%;text-align: center;vertical-align: middle;
                             line-height: 170px;font-size:20px">${price}</div>
                        <div style="width:10%;text-align: center;vertical-align: middle;">
                            ${size}
                        </div>   
                        <div style="width:20%;text-align: center;vertical-align: middle;">
                             ${date}
                        </div>
                    </div>
                    <%            }
                    %>
                </div>
            </div>
    </body>
</html>
