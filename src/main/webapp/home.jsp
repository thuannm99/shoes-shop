<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>MiaShoes</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" 
          integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="home.css">
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
                      <form action="Search.jsp?type=1" method="post">
                            <input type="search" name="str" placeholder="Search">
                            <input type="submit" value="Tìm kiếm" >
                        </form>
                  </div>
              </div>
              <!-- end-search -->
              <%
                  User user = (User) session.getAttribute("currentUser");
                  if(user != null){
                      request.setAttribute("u", user);
                      int amount = user.getSizeTemps();
                      request.setAttribute("amount", amount);
                  }
              %>
              <c:choose>
                  <c:when test="${u eq null}">
                      <div class="infor">
                <a href="SignIn.jsp" class="account">
                    <i class="fa fa-user" aria-hidden="true" id="show"> Tài Khoản</i>
                </a>
              </div>
                  </c:when>
                  <c:otherwise> 
                      <div class="infor">
                          <a href="user/MyAccount.jsp" class="account">
                        <i class="fa fa-user" aria-hidden="true" id="show"> Tài Khoản</i>
                        </a>
                    <div class="product">
                      <a href="user/YourCart.jsp" class="cart">
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
                  </c:otherwise>
              </c:choose>
          </div>
      </div>

      <jsp:include page="menu.jsp"></jsp:include>

      <div id="slide" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#slide" data-slide-to="0" class="active"></li>
          <li data-target="#slide" data-slide-to="1"></li>
          <li data-target="#slide" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active">
            <a href="home.jsp"><img src="css/slider_1.jpg" alt=""></a>
          </div>
          <div class="carousel-item">
            <a href="home.jsp"><img src="css/slider_2.jpg" alt=""></a>
          </div>
          <div class="carousel-item">
            <a href="home.jsp"><img src="css/slider_1.jpg" alt=""></a>
          </div>
        </div>
        <a class="carousel-control-prev" href="#slide" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">previous</span>
        </a>
        <a class="carousel-control-next" href="#slide" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      <!-- end-slide -->
      <div class="title">
        <span>SẢN PHẨM NỔI BẬT</span>
        <br>
        <div></div>
      </div>
      <div class="shoes">
        <div class="package">
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=50" id="find-out"><img src="css/shoe1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=50" id="find-in"><img src="css/shoe2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="MLB NY Cream">MLB NY Cream</a>
              <ul>
                <li style="color: red; margin-left:20px">760.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;">950.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=51" id="find-out"><img src="css/a1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=51" id="find-in"><img src="css/a2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="MLB Boston">MLB Boston</a>
              <ul>
                <li style="color: red; margin-left:20px">760.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;">950.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=52" id="find-out"><img src="css/b1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=52" id="find-in"><img src="css/b2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="MLB LA">MLB LA</a>
              <ul>
                <li style="color: red; margin-left:20px">760.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;">950.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=20" id="find-out"><img src="https://res.cloudinary.com/hoangghiepp1302/image/upload/v1568878446/shoes%20shop/airmax_yellow_1_xzgshr_gpmuey.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=20" id="find-in"><img src="https://res.cloudinary.com/hoangghiepp1302/image/upload/v1568878437/shoes%20shop/airmax_yellow_2_uhjbde_loxbya.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="THE 10: NIKE AIR MAX 90 "OFF WHITE" YELLOW">THE 10: NIKE AIR MAX 90 "OFF WHITE" YELLOW</a>
              <ul>
                <li style="color: red; margin-left:20px">1.890.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;">2.100.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=19" id="find-out"><img src="css/d1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=19" id="find-in"><img src="css/d2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="M2K Tekno White Black">M2K Tekno White Black</a>
              <ul>
                <li style="color: red; margin-left:20px">1.440.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;">1.600.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=6" id="find-out"><img src="https://res.cloudinary.com/hoangghiepp1302/image/upload/v1568878577/shoes%20shop/yeezy350_black_1_rwkbh6_w4xzvp.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=6" id="find-in"><img src="https://res.cloudinary.com/hoangghiepp1302/image/upload/v1568878568/shoes%20shop/yeezy350_black_2_treh0p_o3oj98.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="YEEZY BOOST 350 V2 3M black">YEEZY BOOST 350 V2 3M black</a>
              <ul style="margin-top:-4px;">
                <li style="color: red; margin-left:20px">1.030.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;">1.150.000</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=6" id="find-out"><img src="css/f1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=6" id="find-in"><img src="css/f2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="Zoom Pegasus 36 Black">Zoom Pegasus 36 Black</a>
              <ul>
                <li style="color: red; margin-left:20px">1.200.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;">1.500.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=9" id="find-out"><img src="https://res.cloudinary.com/hoangghiepp1302/image/upload/v1568878533/shoes%20shop/stan_smith_black_1_faqt7d_myeqjk.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=9" id="find-in"><img src="https://res.cloudinary.com/hoangghiepp1302/image/upload/v1568878529/shoes%20shop/stan_smith_black_2_mfgoty_powpxi.jpgv" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="Stan Smith Black">Stan Smith Black</a>
              <ul>
                <li style="color: red; margin-left:20px">9.500.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;">760.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=34" id="find-out"><img src="css/h1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=34" id="find-in"><img src="css/h2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="Vans Vault Style 36 Black">Vans Vault Style 36 Black</a>
              <ul>
                <li style="color: red; margin-left:20px">712.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;"> 890.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=37" id="find-out"><img src="css/i1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=37" id="find-in"><img src="css/i2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="Prophere Grey One - Rep">Prophere Grey One - Rep</a>
              <ul>
                <li style="color: red; margin-left:20px">599.000₫ </li>
                <li style="color: #a6a6a6;text-decoration: line-through;">1.000.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=17" id="find-out"><img src="css/k1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=17" id="find-in"><img src="css/k2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="Air Max 1 Parra">Air Max 1 Parra</a>
              <ul>
                <li style="color: red; margin-left:20px">1.260.000₫ </li>
                <li style="color: #a6a6a6;text-decoration: line-through;">2.100.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=23" id="find-out"><img src="css/l1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=23" id="find-in"><img src="css/l2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="NMD R1 BLACK GOLD">NMD R1 BLACK GOLD</a>
              <ul>
                <li style="color: red; margin-left:20px">1.080.000₫</li>
                <li style="color: #a6a6a6;text-decoration: line-through;"> 1.800.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=29" id="find-out"><img src="css/m1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=29" id="find-in"><img src="css/m2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="YEEZY BOOST 350 V2 3M REFLECTIVE - 1:1 Boost Nén">YEEZY BOOST 350 V2 3M REFLECTIVE - 1:1 Boost Nén</a>
              <ul style="margin-top:-4px;">
                <li style="color: red; margin-left:20px">1.050.000₫ </li>
                <li style="color: #a6a6a6;text-decoration: line-through;">2.100.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=29" id="find-out"><img src="css/n1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=29" id="find-in"><img src="css/n2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="YEEZY BOOST 350 V2 Static - 1:1">YEEZY BOOST 350 V2 Static - 1:1</a>
              <ul>
                <li style="color: red; margin-left:20px">900.000₫ </li>
                <li style="color: #a6a6a6;text-decoration: line-through;">1.800.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=27" id="find-out"><img src="css/p1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=27" id="find-in"><img src="css/p2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="Yeezy 700 Static - 1:1">Yeezy 700 Static - 1:1</a>
              <ul>
                <li style="color: red; margin-left:20px">699.000₫ </li>
                <li style="color: #a6a6a6;text-decoration: line-through;">1.400.000₫</li>
              </ul>
            </div>
          </div>
          <div class="product1">
            <div class="thumbai">
              <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-20%</span>
              <a href="DetailProduct.jsp?id=5" id="find-out"><img src="css/q1.jpg" alt=""style=" width: 280px;
                height: 200px;"></a>
              <a href="DetailProduct.jsp?id=5" id="find-in"><img src="css/q2.jpg" alt="" style=" width: 280px;height: 200px;"></a>
              <a href="" class="name" title="YEEZY 350 V2 FROZEN YELLOW - 1:1">YEEZY 350 V2 "FROZEN YELLOW - 1:1</a>
              <ul>
                <li style="color: red; margin-left:20px">950.000₫ </li>
                <li style="color: #a6a6a6;text-decoration: line-through;">1.900.000₫</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- end-shoes -->


      <div class="contact">
        <a href="tel:0966027102" title="tel:0966027102"><i class="fa fa-phone" aria-hidden="true"></i></a>
      </div>
      <div class="contact1">
        <a href="https://www.facebook.com/Hung.2mono"><i class="fab fa-facebook-messenger"></i></a>
      </div>

      <jsp:include page="footer.jsp"></jsp:include>
      <!-- end-html -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
