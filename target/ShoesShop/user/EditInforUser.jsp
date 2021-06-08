<%@page import="model.User"%>
<%@page import="connectionjdbc.user.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="edit.css">
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
             <%
                  User current = (User) session.getAttribute("currentUser");
                  int num = current.getTemps().size();
                  request.setAttribute("num", num);
              %>
                <div class="infor">
                  <a href="MyAccount.jsp." class="account">
                  <i class="fa fa-user" aria-hidden="true" id="show"> Tài Khoản</i>
                  </a>

                  <div class="logout">
                        <a href="/ShoeShop/user/LogOut.jsp"> Đăng xuất</a>
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
      <!-- end-menu -->
      
        <%
            request.setAttribute("u", current);
            
            String birth = current.getBirthday();
            int year = Integer.parseInt(birth.substring(0, 4));
            int month = Integer.parseInt(birth.substring(5,7));
            int date = Integer.parseInt(birth.substring(8,10));
            request.setAttribute("d", date);
            request.setAttribute("m", month);
            request.setAttribute("y", year);
            
            
        %>
        <br><br>
        <h1 align="center">Chỉnh sửa thông tin tài khoản</h1>
        <br><br><br> 
        <div class="center">
            <div class="left">
            <form action="UploadAvatar.jsp" method="post" enctype="multipart/form-data" name="changeAvatar">
                <div id="ava_div">
                    <label>Avatar</label>
                    <img  src="${u.avatar}" width="200px" height="200px">
                    <input type="file" name="file" accept="*/img" style="margin-left: 350px">
                </div>
                <br>   
                <input type="submit" value="Thay đổi avatar" style="margin-left: 400px">
            </form>
            <br><br><br>
            <form  action="EditUserPost.jsp" onsubmit="return Validation()" name="register" method="post"> 
                <div id="name_div">
                    <label>Họ và tên</label>
                    <input type="text" name="name" class="textInput" value="${u.name}">
                    <div id="name_error" class="err">  </div>
                </div>
                <div id="email_div">
                  <label>Email</label>
                  <input type="text" name="email" class="textInput" value="${u.email}">
                  <div id="email_error" class="err"></div>
                </div>
                <div id ="phone_div">
                    <label>Số điện thoại</label>
                    <input type="number" name="phone_number" class="textInput" value="${u.phoneNumber}">
                    <div id="phone_error" class="err"></div>
                </div>
                <div id="add_div">
                    <label>Địa chỉ</label>
                    <input type="text" name="address" class="textInput" value="${u.address}">
                    <div id="add_error" class="err"></div>
                  </div>
                 <div >
                    <label for="lab">Ngày sinh</label> 
                    <input name="day" type="number"  class="date_input" max="31" min="1" value="${d}"> 
                        <input name="month" type="number" max="12" min="1" class="date_input" value="${m}"> 
                        <input name="year" type="number" max="2020" min="1950" class="date_input" value="${y}">
                 </div>  
                 <c:if test="${user.gender eq 'male'}">
                     <div>
                    <label for="lab">Giới tính </label> <input name="gender" type="radio" value="male" checked="true"> Nam 
                    <input name="gender" type="radio" value="female" checked="false"> Nữ 
                    </div>
                 </c:if> 
                 <c:if test="${user.gender eq 'female'}">
                     <div>
                    <label for="lab">Giới tính </label> <input name="gender" type="radio" value="male" checked="false"> Nam 
                    <input name="gender" type="radio" value="female" checked="true"> Nữ 
                    </div>
                 </c:if>  
                 <div> 
                <input type="submit" name="register" value="Chỉnh sửa" class="btn">
                </div>
            </form>
            </div>
            
            <div class="right">
                <h3 style="align-content: center">Thay đổi mật khẩu</h3>
                <form action="ChangePassword.jsp" method="post" onsubmit="return change()" name="change">
                    <div>
                        <label style="font-size: 20px;margin-left: 20px;">Mật khẩu cũ :</label>
                        <input type="password" name="oldPass" class="textInput" style="width:300px">
                    </div>
                    <div id="old_error" class="err">  </div>
                    <div>
                        <label style="font-size: 20px;margin-left: 20px;">Mật khẩu mới :</label>
                        <input type="password" name="newPass" class="textInput" style="width:300px">
                        <div id="new_error" class="err">  </div>
                    </div>
                    <div>
                        <label style="font-size: 20px;margin-left: 20px;">Nhập lại mật khẩu :</label>
                        <input type="password" name="conPass" class="textInput" style="width:300px">
                    </div>
                    <div id="con_error" class="err">  </div>
                    <input type="submit" value="Thay đổi" class="btn" style="margin-left: 100px;">
                </form>
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
          </div>name
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
      <script src="Edit.js"></script>
    </body>
</html>
