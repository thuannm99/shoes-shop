<%@page import="other.Other"%>
<%@page import="java.util.List"%>
<%@page import="model.TempProduct"%>
<%@page import="model.User"%>
<%@page import="connectionjdbc.product.ProductService"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link rel="stylesheet" href="yourCart.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <%
            String idAdd = request.getParameter("id"); 
            String idRemove = request.getParameter("remove");
            int id = 0;
            User user = (User) session.getAttribute("currentUser");
            Product product = null;
            TempProduct temp = null;
            if(idAdd != null){
                id = Integer.parseInt(idAdd); 
                product = new ProductService().getProductById(id);
                if(id != 0){
                    temp = new TempProduct(id, product.getName(),product.getImg1(), 
                            product.getPrice()/100*(100-product.getDiscount()));
                    user.addTempProduct(temp);
                }
            }else if(idRemove != null){
                id = Integer.parseInt(idRemove);
                user.removeProduct(id);
            }
            List<TempProduct> list = user.getTemps();
            double price = 0;
            for(TempProduct p : list){
                price += p.getPrice();
            }
            String cost = Other.displayMoney( (int) price);
            request.setAttribute("cost", cost);
        %>
        <div class="header">
          <div class="package">
              <div class="shop_name">
                  <a href="/ShoeShop/home.jsp"><h1>MiaShoes</h1></a>
              </div>
              <div class="box_search">
                  <span>Tìm Kiếm Sản Phẩm</span>
                  <div class="search" style="height: 100px;">
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
          
    <form action="BuyNow.jsp" method="post">  
        <div class="table">
            <div class="head">
                <div style="width:25%;text-align: center;">Sản phẩm</div>
                <div style="width:30%;text-align: center;">Thông tin sản phẩm</div>
                <div style="width:15%;text-align: center;">Đơn giá</div>
                <div style="width:10%;text-align: center;">Size</div>   
                <div style="width:10%;text-align: center;">Thêm</div>
                <div style="width:10%;text-align: center;">Xóa</div>
            </div>
            <div class="list">
                <%
                    for(TempProduct tp : list){
                        request.setAttribute("img", tp.getImg());
                        request.setAttribute("na", tp.getName());
                        String pri = Other.displayMoney((int)tp.getPrice());
                        request.setAttribute("pri", pri);
                        request.setAttribute("id_pro", tp.getId());
                %>
                <div class="product" style="height:200px;">
                    <div style="width:25%">
                        <img src="${img}" width="250px" style="margin-left:30px">
                    </div>
                    <div style="width:30%;text-align: center;vertical-align: middle;line-height: 170px;font-size:20px">${na}</div>
                    <div style="width:15%;text-align: center;vertical-align: middle;line-height: 170px;font-size:20px">${pri}</div>
                    <div style="width:10%;text-align: center;vertical-align: middle;" class="quantity">
                        <br><br>
                        <button class="minus-btn" type="button" name="button" style="margin-left: 40px;">
                           <img src="icon/minus.svg" alt="" width="7px" height="7px"/>
                        </button>               
                           <input type="number" name="size" value="36" min="36" max="45">
                        <button class="plus-btn" type="button" name="button" >
                            <img src="icon/plus.svg" alt="" width="7px" height="7px"/>
                        </button>

                    </div>   
                    <div style="width:10%">
                        <br><br><br>
                        <a href="YourCart.jsp?id=${id_pro}">
                            <img src="icon/plus.svg" width="48px" style="margin-left:50px">
                        </a>
                    </div>
                    <div style="width:10%;line-height: 35px;"> 
                        <br><br> 
                        <a href="YourCart.jsp?remove=${id_pro}">
                            <img src="icon/trash.svg" width="48px" style="margin-left:50px">
                        </a>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>      
    <br><br>
    <div class="cost" style="margin-left: 1000px;margin-top: 20px;">
        <h4 style="margin-left: 50px;">Tổng tiền : ${cost}</h4>
    </div>
        <a href="/ShoeShop/home.jsp" style="background-color: #f2f1ef;color: black;
            font-size: 18px;padding: 10px;border-radius: 6px;display: inline-block;
            border: 1px solid #19b5fe;text-align: center;width: 200px;height: 50px;
            margin-left: 1000px; text-decoration: none">
           Tiếp tục mua hàng
        </a>
        <input type="submit"  style="background-color: black;color: white;font-size: 18px;
                padding: 6px;border-radius: 6px;display: inline-block;
                border: 1px solid #19b5fe;text-align: center;width: 200px;height: 50px;" value="Tiến hành đặt hàng">
    </form>    
          
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
    
    <script type="text/javascript">
        $('.minus-btn').on('click', function(e) {
              e.preventDefault();
              var $this = $(this);
              var $input = $this.closest('div').find('input');
              var value = parseInt($input.val());
  
              if (value > 36) {
                  value = value - 1;
              } else {
                  value = 36;
              }
          $input.val(value);
  
          });
  
          $('.plus-btn').on('click', function(e) {
              e.preventDefault();
              var $this = $(this);
              var $input = $this.closest('div').find('input');
              var value = parseInt($input.val());
  
              if (value < 45) {
                value = value + 1;
              } else {
                  value =45;
              }
  
              $input.val(value);
          });
  
        $('.like-btn').on('click', function() {
          $(this).toggleClass('is-active');
        });
    </script>
    </body>
</html>
