<%@page import="model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="vi">
<head>
    <title>Sign Up</title>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="signUp.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
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
        <div class="infor">
            <a href="SignIn.jsp" class="account">
                <i class="fa fa-user" aria-hidden="true" id="show"> Tài Khoản</i>
            </a>
        </div>
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
                <a href="Search.jsp?str=sales&type=4" class="item1">SALES</a>
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
<div class="linked">
    <div class="package">
        <a href=""><i class="fa fa-home" aria-hidden="true"></i>Trang chủ</a>
        <span><i class="fa fa-chevron-right" aria-hidden="true"></i>Đăng ký tài khoản</span>
    </div>
</div>
<!-- end-linked -->
<%
    String error = request.getParameter("error");
    String username = "";
    String password = "";
    User user = null;
    if (error != null) {
        username = (String) session.getAttribute("username");
        password = (String) session.getAttribute("password");
        user = (User) session.getAttribute("newUser");
        request.setAttribute("err", error);
        request.setAttribute("user", user);
    }
%>
<br><br>
${err}
<c:choose>
    <c:when test="${err eq null}">
        <div id="wrapper">
            <form action="SendMail.jsp" onsubmit="return Validation()" name="register" method="post" >
                <div id="username_div">
                    <label>Tài khoản</label>
                    <input type="text" name="username" class="textInput" placeholder="example">
                    <div id="username_error" class="err"></div>
                </div>
                <div id="password_div">
                    <label>Mật khẩu</label>
                    <input type="password" name="password" class="textInput" placeholder="********">
                    <div id="password_error" class="err"></div>
                </div>
                <div id="name_div">
                    <label>Họ và tên</label>
                    <input type="text" name="name" class="textInput" placeholder="Nguyễn Văn A">
                    <div id="name_error" class="err"></div>
                </div>
                <div id="email_div">
                    <label>Email</label>
                    <input type="email" name="email" class="textInput" placeholder="nguyenvana@gmail.com">
                    <div id="email_error" class="err"></div>
                </div>
                <div id ="phone_div">
                    <label>Số điện thoại</label>
                    <input type="number" name="phone_number" class="textInput" placeholder="0123456789">
                    <div id="phone_error" class="err"></div>
                </div>
                <div id="add_div">
                    <label>Địa chỉ</label>
                    <input type="text" name="address" class="textInput" placeholder="Hà Nội">
                    <div id="add_error" class="err"></div>
                </div>
                <div id="bir_div">
                    <label for="lab">Ngày sinh</label>
                    <input name="day" type="number"  class="date_input" max="31" min="1" required="true">
                    <input name="month" type="number" max="12" min="1" class="date_input" required="true">
                    <input name="year" type="number" max="2020" min="1950" class="date_input" required="true">
                    <div id="birth_error" class="err"></div>
                </div>
                <div>
                    <label for="lab">Giới tính </label> <input name="gender" type="radio" value="male" required="true"> Nam
                    <input name="gender" type="radio" value="female" required="true"> Nữ
                </div>
                <div>
                    <input type="submit" name="register" value="Register" class="btn">
                </div>
            </form>
        </div>
    </c:when>
    <c:otherwise>
        <c:if test="${err eq '1'}">
            <h5 style="margin-left: 150px;color: #ff0000">Email đã tồn tại</h5>
        </c:if>
        <c:if test="${err eq '2'}">
            <h5 style="margin-left: 150px;color: red">Số điện thoại đã tồn tại</h5>
        </c:if>
        <c:if test="${err eq '3'}">
            <h5 style="margin-left: 150px;color: red">Tài khoản đã tồn tại</h5>
        </c:if>
        <br>
        <div id="wrapper">
            <form method="POST" action="SendMail.jsp" onsubmit="return Validation()" name="register" >
                <div id="username_div">
                    <label>Tài khoản</label>
                    <input type="text" name="username" class="textInput" value="${username}">
                    <div id="username_error" class="err">  </div>
                </div>
                <div id="password_div">
                    <label>Mật khẩu</label>
                    <input type="password" name="password" class="textInput" value="${password}">
                    <div id="password_error" class="err">  </div>
                </div>
                <div id="name_div">
                    <label>Họ và tên</label>
                    <input type="text" name="name" class="textInput" value="${user.name}">
                    <div id="name_error" class="err">  </div>
                </div>
                <div id="email_div">
                    <label>Email</label>
                    <input type="text" name="email" class="textInput" value="${user.email}">
                    <div id="email_error" class="err"></div>
                </div>
                <div id ="phone_div">
                    <label>Số điện thoại</label>
                    <input type="number" name="phone_number" class="textInput" value="${user.phoneNumber}">
                    <div id="phone_error" class="err"></div>
                </div>
                <div id="add_div">
                    <label>Địa chỉ</label>
                    <input type="text" name="address" class="textInput" value="${user.address}">
                    <div id="add_error" class="err"></div>
                </div>
                <div >
                    <label for="lab">Ngày sinh</label>
                    <input name="day" type="number"  class="date_input" max="31" min="1" required="true">
                    <input name="month" type="number" max="12" min="1" class="date_input" required="true">
                    <input name="year" type="number" max="2020" min="1950" class="date_input" required="true">
                </div>
                <div>
                    <label for="lab">Giới tính </label> <input name="gender" type="radio" value="male" required="true"> Nam
                    <input name="gender" type="radio" value="female" required="true"> Nữ
                </div>
                <div>
                    <input type="submit" name="register" value="Register" class="btn">
                </div>
            </form>
        </div>
    </c:otherwise>
</c:choose>


<!-- end register-->


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
<div class="contact">
    <a href="tel:1234567" title="tel:12345678"><i class="fa fa-phone" aria-hidden="true"></i></a>
</div>
<div class="contact1">
    <a href="http://www.facebook.com"><i class="fab fa-facebook-messenger"></i></a>
</div>
<!-- end-page -->
<!-- javascript -->


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="Register.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
