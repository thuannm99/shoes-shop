
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Đăng nhập tài khoản</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="header.css">
        <link rel="stylesheet" href="signIn.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
      <div class="header">
          <div class="package">
              <div class="shop_name">
                  <a href="home.jsp"><h1>Mia Shoes</h1></a>
              </div>
              <div class="box_search">
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
                    <div id="hide">
                        <a href="SignUp.jsp">
                            <i class="fa fa-user-plus" aria-hidden="true"> Đăng Ký</i>
                        </a>
                      <br>
                      <a href="SignIn.jsp">
                          <i class="fa fa-sign-out" aria-hidden="true"> Đăng Nhập</i>
                      </a>
                    </div>
                </a>

              </div>
          </div>
      </div>
          <!-- end-header -->

      <jsp:include page="menu.jsp"></jsp:include>
      <!-- end-menu -->
      
      <%
          String error = request.getParameter("error");
          if(error != null){
              request.setAttribute("e", error);
          }
      %>
        <h1 class="title-head" style="text-align: center; margin: 40px 0;">
            <span>ĐĂNG NHẬP TÀI KHOẢN</span>
        </h1>
      <c:if test="${e eq '0'}">
          <h4 style="color: blue;margin-left: 50px;">
              Bạn đã đăng kí thành công!
          </h4>
      </c:if>
        <div class="row">
            <div class="col-lg-6">
                <div class="page-login margin-bottom-30">
                    <div id="login" style="font-family: emoji;    font-size: 20px">
                        <span style="padding-left: 140px ">
                            Nếu bạn đã có tài khoản, đăng nhập tại đây.
                        </span>
                        <c:if test="${e eq '1'}">
                        <br>
                        <span style="color: red; padding-left: 140px;">
                            Tài khoản hoặc mật khẩu không đúng!
                        </span> 
                        </c:if>
                        <form accept-charset="UTF-8" action="Filter.jsp" id="customer_login"  method="post">
                            <input name="FormType" type="hidden" value="customer_login">
                            <input name="utf8" type="hidden" value="true">
                            <div class="form-signup errors">

                            </div>
                            <div class="form-signup clearfix" style="margin-left: 100px; padding-right:60px">
                                <fieldset class="form-group">
                                    <label style="margin-bottom: -0.5rem; margin: 20px 40px; font-weight: bold">Tài khoản <span class="required">*</span></label>
                                    <input name ="username" type="text"  class="form-control form-control-lg" value="" name="username" id="customer_email" placeholder="Tên đăng nhập" required="">
                                </fieldset>
                                <fieldset class="form-group">
                                    <label style="margin-bottom: -0.5rem; margin: 20px 40px; font-weight: bold">Mật khẩu <span class="required">*</span></label>
                                    <input name ="password" type="password" class="form-control form-control-lg" value="" name="password" id="customer_password" placeholder="Mật khẩu" required="">
                                </fieldset>
                                <div class="pull-xs-left" style="margin-top: 25px;">
                                    <input class="btn btn-style btn-primary rebtn" style="background-color: black;width: 150px; font-size: large; margin-left: 25px;" type="submit" value="Đăng nhập">
                                    <a href="SignUp.jsp" class="btn-link-style btn-register" style="margin-left: 20px;text-decoration: none;
                                       ">Đăng ký</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">

                <div id="recover-password" class="form-signup" style="font-family: emoji;    font-size: 20px">
                    <span style="padding-left: 40px;">
                        Bạn quên mật khẩu? Nhập địa chỉ email để lấy lại mật khẩu qua email.
                    </span>					
                    <form accept-charset="UTF-8" action="SendMail2.jsp" id="recover_customer_password" onsubmit="return checkEmail()" method="post">
                        <input name="FormType" type="hidden" value="recover_customer_password">
                        <input name="utf8" type="hidden" value="true">
                        <div class="form-signup aaaaaaaa" style="padding-right: 80px">
                        <div class="form-signup clearfix">
                            <fieldset class="form-group">
                                <label style="margin-bottom: -0.5rem; margin: 20px 40px; font-weight: bold">Email <span class="required">*</span></label>
                                <input name="email" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" class="form-control form-control-lg" value="" name="Email" id="recover-email" placeholder="Email" required="">
                            </fieldset>
                        </div>
                        <div class="action_bottom">
                            <input class="btn btn-style btn-dark rebtn" style="margin-top: 15px;background-color: black;width: 180px; font-size: large; margin-left: 25px;
                                   " width="100px" type="submit" value="Lấy lại mật khẩu">
                        </div>
                        </div>
                    </form>
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
        <!-- end-banner -->
        <div class="contact">
            <a href="tel:1234567" title="tel:12345678"><i class="fa fa-phone" aria-hidden="true"></i></a>
        </div>
        <div class="contact1">
            <a href="http://www.facebook.com"><i class="fab fa-facebook-messenger"></i></a>
        </div>
        <script type="text/javascript"> 
        function checkEmail() { 
            var email = document.getElementById('email'); 
            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
            if (!filter.test(email.value)) { 
                     alert('Hay nhap dia chi email hop le.\nExample: ngvanA@gmail.com');
                     email.focus; 
                     return false; 
            }
            return true;
        } 
        </script>
    </body>
</html>
