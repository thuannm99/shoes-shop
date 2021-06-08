<%@page import="model.Quantity"%>
<%@page import="model.User"%>
<%@page import="other.Other"%>
<%@page import="model.Shoes"%>
<%@page import="java.util.List"%>
<%@page import="model.DetailProduct"%>
<%@page import="connectionjdbc.product.ProductService"%>
<%@page import="connectionjdbc.user.UserService"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <title>MiaShoes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
          integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="detail.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    request.setAttribute("id", id);
    ProductService service = new ProductService();
    Product product = service.getDescriptionProduct(id);
    List<Product> list = service.recommenProduct(product);
    request.setAttribute("product", product);
    DetailProduct dp = product.getDetailProduct();
    int pri1 = (int)product.getPrice()/100 * (100 - product.getDiscount());
    String sale1 = Other.displayMoney(pri1);
    String price1 = Other.displayMoney((int)product.getPrice());
    request.setAttribute("dp", dp);
    request.setAttribute("qu", product.getQuantity());
    request.setAttribute("sale1", sale1);
    request.setAttribute("price1", price1);
    request.setAttribute("discount1", product.getDiscount());
%>
<div class="header">
    <div class="package">
        <div class="shop_name">
            <a href="home.jsp"><h1>MiaShoes</h1></a>
        </div>
        <div class="box_search">
            <span>Tìm Kiếm Sản Phẩm</span>
            <div class="search">
                <form action="Search.jsp?type=1" method="post">
                    <input type="search" name="str" placeholder="Search">
                    <input type="submit" value="Tìm kiếm" >
                </form>
            </div>
        </div>
        <!-- end-search -->
        <%
            User current = (User) session.getAttribute("currentUser");
            request.setAttribute("cur", current);
            if(current != null){
                int amount = current.getTemps().size();
                request.setAttribute("amount", amount);
            }

        %>
        <c:choose>
            <c:when test="${cur eq null}">
                <div class="infor">
                    <a href="SignIn.jsp" class="account">
                        <i class="fa fa-user" aria-hidden="true" id="show"> Tài Khoản</i>

                    </a>
                </div>
            </c:when>
            <c:otherwise>
                <div class="infor">
                    <a href="user/MyAccount.jsp." class="account">
                    </a>

                    <div class="logout">
                        <a href="/ShoeShop/user/LogOut.jsp">Đăng xuất</a>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<!-- end-header -->
<div class="menu">
    <div class="package">
        <ul class="menu-ngang">
            <li id="menu1">
                <a href="Search.jsp?str=nike&type=2" class="item1">NIKE</a>
                <ul id="menu11">
                    <li><a href="Search.jsp?str=nike&type=2" id="item2">Air Force 1</a></li>
                    <li><a href="Search.jsp?str=nike&type=2" id="item2">Air Jordan1</a></li>
                    <li><a href="Search.jsp?str=nike&type=2" id="item2">Air Max 1</a></li>
                    <li><a href="Search.jsp?str=nike&type=2" id="item2">Air Max 197</a></li>
                    <li><a href="Search.jsp?str=nike&type=2" id="item2">Air Max 270</a></li>
                    <li><a href="Search.jsp?str=nike&type=2" id="item2">Air Max 97</a></li>
                    <li><a href="Search.jsp?str=nike&type=2" id="item2">Presto</a></li>
                </ul>
            </li>
            <li id="menu1">
                <a href="Search.jsp?str=adidas&type=2" class="item1">ADIDAS</a>
                <ul id=menu11>
                    <li><a href="Search.jsp?str=adidas&type=2" id="item2">Stan Smith</a></li>
                    <li><a href="Search.jsp?str=adidas&type=2" id="item2">SuperStar</a></li>
                    <li><a href="Search.jsp?str=adidas&type=2" id="item2">Derup Runner</a></li>
                    <li><a href="Search.jsp?str=adidas&type=2" id="item2">Tubular Doom</a></li>
                    <li><a href="Search.jsp?str=adidas&type=2" id="item2">Falcom</a></li>
                    <li><a href="Search.jsp?str=adidas&type=2" id="item2">Pod</a></li>
                    <li><a href="Search.jsp?str=adidas&type=2" id="item2">Young1</a></li>
                </ul>
            </li>
            <li id="menu1">
                <a href="Search.jsp?str=luxury&type=2" class="item1">LUXURY</a>
                <ul id=menu11 style="height: 100px;">
                    <li><a href="Search.jsp?str=luxury&type=2" id="item2">Balenciaga</a></li>
                    <li><a href="Search.jsp?str=luxury&type=2" id="item2">Gucci</a></li>
                    <li><a href="Search.jsp?str=luxury&type=2" id="item2">MC Queen</a></li>
                </ul>
            </li>
            <li id="menu1">
                <a href="Search.jsp?str=vans&type=2" class="item1">VANS</a>
                <ul id=menu11 style="height: 150px;">
                    <li><a href="Search.jsp?str=vans&type=2" id="item2">Style 36</a></li>
                    <li><a href="Search.jsp?str=vans&type=2" id="item2">Slip on</a></li>
                    <li><a href="Search.jsp?str=vans&type=2" id="item2">Old Skool</a></li>
                    <li><a href="Search.jsp?str=vans&type=2" id="item2">Era 95</a></li>
                    <li><a href="Search.jsp?str=vans&type=2" id="item2">Sk8</a></li>
                </ul>
            </li>
            <li id="menu1">
                <a href="Search.jsp?str=convers&type=2" class="item1">CONVERS</a>
                <ul id=menu11 style="height: 80px;">
                    <li><a href="Search.jsp?str=convers&type=2" id="item2">1970s</a></li>
                    <li><a href="Search.jsp?str=convers&type=2" id="item2">Chuck 70s x CDG</a></li>
                </ul>
            </li>
            <li id="menu1">
                <a href="Search.jsp?str=fila&type=2" class="item1">FILA</a>
                <ul id=menu11 style="height: 80px;">
                    <li><a href="Search.jsp?str=fila&type=2" id="item2">Fila ray</a></li>
                    <li><a href="Search.jsp?str=fila&type=2" id="item2">Fila Disruptor II</a></li>
                </ul>
            </li>
            <li id="menu1">
                <a href="Search.jsp?str=the10&type=2" class="item1">THE10</a>
            </li>
            <li id="menu1">
                <a href="Search.jsp?str=fashion&type=2" class="item1">FASHION</a>
                <ul id=menu11 style="height: 120px;">
                    <li><a href="Search.jsp?str=fashion&type=2" id="item2">Áo Phông</a></li>
                    <li><a href="Search.jsp?str=fashion&type=2" id="item2">Áo Sơ Mi</a></li>
                    <li><a href="Search.jsp?str=fashion&type=2" id="item2">Quần Jeans</a></li>
                    <li><a href="Search.jsp?str=fashion&type=2" id="item2">Quần Âu</a></li>
                </ul>
            </li>
            <li id="menu1">
                <a href="Search.jsp?type=4" class="item1">SALES</a>
            </li>
            <li id="menu1">
                <a href="Search.jsp?str=shock&type=3" class="item1">PHỤ KIỆN</a>
            </li>
            <li id="menu1">
                <a href="" class="item1">NHẬN THÔNG BÁO SALES</a>
            </li>
        </ul>
    </div>
</div>
        <!-- end-menu -->
<br><br>
<div style="margin-left: 50px;">
    <div>
        <a href="/ShoeShop/user/MyAccount.jsp"><i class="fas fa-bars" aria-hidden="true"></i> Trang quản lý</a>
        <i class="fa fa-chevron-right" aria-hidden="true"></i><a href="ListProduct.jsp"> Sản phẩm</a>
        <span><i class="fa fa-chevron-right" aria-hidden="true"></i>Xem sản phẩm</span>
    </div>
</div>
<div class="center">
    <div class="left">
        <img src="${product.img1}" width="600px" height="400px">
        <br>
        <div class="sub">
            <div class="img1">
                <a>
                    <img class="subimg" width="150px" src="${product.img1}">
                </a>
            </div>
            <div class="img2">
                <a>
                    <img class="subimg" width="150px" src="${product.img2}">
                </a>
            </div>
            <div class="img3">
                <a>
                    <img class="subimg" width="150px" src="${product.img1}">
                </a>
            </div>
            <div class="img4">
                <a>
                    <img class="subimg" width="150px" src="${product.img2}">
                </a>
            </div>
        </div>
    </div>
    <div class="right" style="margin-left: 250px; text-align: left">
        <h3> Tên sản phẩm: ${product.name}</h3>
        <div class="price">
            <c:choose>
                <c:when test="${discount1 != '0'}">
                    <ul>
                        <li style="list-style: none; color: black">Giá: ${price1}</li>
                        <li style="list-style: none; color: black">Giá giảm giá: <c:out value="${sale1}" /></li>

                    </ul>
                </c:when>
                <c:otherwise>
                    <ul>
                        <li style="list-style: none; color: black">Giá: <c:out value="${price1}" /></li>
                    </ul>
                </c:otherwise>
            </c:choose>
        </div>
        <h3>Mô tả:</h3>
        <p>
            - Chất lượng Rep 1:1 [ Bao check ]<br>
            - Vận chuyển toàn quốc&nbsp;[ Kiểm Tra Hàng Trước Khi Thanh Toán ]&nbsp;<br>
            - 100% Ảnh chụp trực tiếp tại Mia Shoes&nbsp;<br>
            - Bảo Hành Trọn Đời Sản Phẩm&nbsp;<br>
            - Đổi Trả 7 Ngày Không Kể Lí Do&nbsp;<br>
            - Liên Hệ : 0966.027.102
        </p>
        <h3>
            Số lượng
        </h3>
        <div class="tab">
            <table>
                <tr>
                    <th>36</th>
                    <th>37</th>
                    <th>38</th>
                    <th>39</th>
                    <th>40</th>
                    <th>41</th>
                    <th>42</th>
                    <th>43</th>
                    <th>44</th>
                    <th>45</th>
                </tr>

                <tr>
                    <td>${qu.size36}</td>
                    <td>${qu.size37}</td>
                    <td>${qu.size38}</td>
                    <td>${qu.size39}</td>
                    <td>${qu.size40}</td>
                    <td>${qu.size41}</td>
                    <td>${qu.size42}</td>
                    <td>${qu.size43}</td>
                    <td>${qu.size44}</td>
                    <td>${qu.size45}</td>
                </tr>
            </table>
        </div>
        <br>
      </div>
</div>
<div class="contact">
    <a href="tel:0966027102" title="tel:0966027102"><i class="fa fa-phone" aria-hidden="true"></i></a>
</div>
<div class="contact1">
    <a href="https://www.facebook.com/Hung.2mono"><i class="fab fa-facebook-messenger"></i></a>
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
<!-- end-banner -->
</body>
</html>
