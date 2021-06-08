<%@page import="model.User"%>
<%@page import="other.Other"%>
<%@page import="connectionjdbc.product.ProductService"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
        <link rel="stylesheet" href="search.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>

        <%
            List<Product> list = null;
            ProductService ps = new ProductService();
            String option = request.getParameter("option");
            String type = request.getParameter("type");
            request.setAttribute("type", type);
            String str = request.getParameter("str");
            if(str == null){
                str = "all";
            }
            request.setAttribute("str", str);
            if ("1".equals(type)) {
                if(!"all".equals(str)){
                    list = ps.searchProductForName(str);
                }else{
                    list = ps.getAllProduct();
                }
                if("1".equals(option)){
                  list = ps.orderProductAscendingByName(list);
                }else if("2".equals(option)){
                    list = ps.orderProductDescendingByName(list);    
                }else if("3".equals(option)){
                   list = ps.orderProductAscendingByPrice(list); 
                }else if("4".equals(option)){
                    list = ps.orderProductDescendingByPrice(list);
                }
            } else if("2".equals(type)){
                list = ps.getAllProductForBrand(str);
                if("1".equals(option)){
                  list = ps.orderProductAscendingByName(list);
                }else if("2".equals(option)){
                    list = ps.orderProductDescendingByName(list);    
                }else if("3".equals(option)){
                   list = ps.orderProductAscendingByPrice(list); 
                }else if("4".equals(option)){
                    list = ps.orderProductDescendingByPrice(list);
                }
            }else if("3".equals(type)){
                list = ps.getAllOthers();
                if("1".equals(option)){
                  list = ps.orderProductAscendingByName(list);
                }else if("2".equals(option)){
                    list = ps.orderProductDescendingByName(list);    
                }else if("3".equals(option)){
                   list = ps.orderProductAscendingByPrice(list); 
                }else if("4".equals(option)){
                    list = ps.orderProductDescendingByPrice(list);
                }
            }else if("4".equals(type)){
                list = ps.getAllSaleProducts();
                if("1".equals(option)){
                  list = ps.orderProductAscendingByName(list);
                }else if("2".equals(option)){
                    list = ps.orderProductDescendingByName(list);    
                }else if("3".equals(option)){
                   list = ps.orderProductAscendingByPrice(list); 
                }else if("4".equals(option)){
                    list = ps.orderProductDescendingByPrice(list);
                }
            }
            request.setAttribute("list", list);
            int amount = list.size();
            request.setAttribute("a", amount);

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
                  User user = (User) session.getAttribute("currentUser");
                  if(user != null){
                        request.setAttribute("u", user);
                        int number = user.getSizeTemps();
                        request.setAttribute("num", number);
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
                          <li>${num} Sản phẩm</li>
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
        <!-- end-header -->
        <jsp:include page="menu.jsp"></jsp:include>

        <!-- end-menu -->
        <br><br><br>

        <h2 align="center">Có ${a} sản phẩm được tìm thấy</h2>

        <br><br>
        <div class="shoes">
            <div class="package">
            <%   
                for (Product p : list) {
                    int pri = (int)p.getPrice()/100 * (100 - p.getDiscount());
                    String sale = Other.displayMoney(pri);
                    String price = Other.displayMoney((int)p.getPrice());
                    request.setAttribute("id", p.getId());
                    request.setAttribute("name", p.getName());
                    request.setAttribute("discount", p.getDiscount());
                    request.setAttribute("img1", p.getImg1());
                    request.setAttribute("img2", p.getImg2());
                    request.setAttribute("sale", sale);
                    request.setAttribute("price", price);
            %>
            
                <div class="product1">
                    <div class="thumbai">
                <c:if test="${discount > 0}">
                     <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-${discount}%</span>
                </c:if>                    
                    <a href="DetailProduct.jsp?id=${id}" id="find-out"><img src="${img1}" alt="" class="anh1" style=" width: 280px; height: 200px;"></a>
                    <a href="DetailProduct.jsp?id=${id}" id="find-in"><img src="${img2}" alt="" class="anh2" style=" width: 280px;height: 200px;"></a>
                    <a href="DetailProduct.jsp?id=${id}" class="name" title="${name}">${name}</a>
                    <c:choose>
                    <c:when test="${discount > 0}">
                        <ul>
                            <li style="color: red; margin-left:20px;font-size: 17px;"><c:out value="${sale}" /></li>
                            <li style="color: #a6a6a6;text-decoration: line-through;font-size: 17px;">${price}</li>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        <ul>
                            <li style="color: black; margin-left: 40px; font-size: 17px;"><c:out value="${sale}" /></li>
                        </ul>
                    </c:otherwise>
                </c:choose>
                    </div>
                </div>
            <%
                }
            %>
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
        <!-- end-html -->

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
