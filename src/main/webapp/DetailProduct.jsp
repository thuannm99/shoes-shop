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
        <!-- end-header -->
        <jsp:include page="menu.jsp"></jsp:include>
        <!-- end-menu -->


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
                <div class="right">
                    <h1 class="titel">${product.name}</h1>
                    <div class="price">
                        <c:choose>
                        <c:when test="${discount1 != '0'}">
                            <ul>
                                <li style="color: red; margin-left:20px;font-size: 17px; list-style: none;"><c:out value="${sale1}" /></li>
                                <li style="color: #a6a6a6;text-decoration: line-through;font-size: 17px;list-style: none;">${price1}</li>
                            </ul>
                        </c:when>
                        <c:otherwise>
                            <ul>
                                <li style="color: black; margin-left: 40px; font-size: 17px;"><c:out value="${price1}" /></li>
                            </ul>
                        </c:otherwise>
                    </c:choose>
                    </div>
                    <p>
                        - Chất lượng Rep 1:1 [ Bao check ]<br>
                        - Vận chuyển toàn quốc&nbsp;[ Kiểm Tra Hàng Trước Khi Thanh Toán ]&nbsp;<br>
                        - 100% Ảnh chụp trực tiếp tại Mia Shoes&nbsp;<br>
                        - Bảo Hành Trọn Đời Sản Phẩm&nbsp;<br>
                        - Đổi Trả 7 Ngày Không Kể Lí Do&nbsp;<br>
                        - Liên Hệ : 0966.027.102
                    </p>
                    <div>
                        Số lượng
                    </div>
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
                   <div class="buy">
                       <div class="buy_now">
                           <a href="user/BuyNow.jsp?id=${id}">
                            <button class="btn">
                                 Mua Ngay
                            </button>
                            </a>
                       </div>
                       <div class="add_cart">
                            <a href="user/YourCart.jsp?id=${id}">
                            <button class="btn">
                                Thêm vào giỏ hàng
                            </button>
                            </a>
                       </div>
                   </div>
                </div>
            </div>

            <br>

            <div class="rec">
                <div class="title">
                    <h3 class="tt"><a class="re">SẢN PHẨM CÙNG LOẠI</a> </h3>
                </div>
            </div>
            
            <div class="shoes">
                <div class="package">
            <%
                for (Product p : list) {
                    int pri = (int)p.getPrice()/100 * (100 - p.getDiscount());
                    String sale = Other.displayMoney(pri);
                    String price = Other.displayMoney((int)p.getPrice());
                    request.setAttribute("sub_id", p.getId());
                    request.setAttribute("name", p.getName());
                    request.setAttribute("discount", p.getDiscount());
                    request.setAttribute("img1", p.getImg1());
                    request.setAttribute("img2", p.getImg2());
                    request.setAttribute("sale", sale);
                    request.setAttribute("price", price);
            %>
                <div class="product1">
                    <div class="thumbai">
                <c:if test="${discount != '0'}">
                     <span class="icon-sale" style="padding-top:10px;padding-right:8px; font-weight:bold;">-${discount}%</span>
                </c:if>                    
                    <a href="DetailProduct.jsp?id=${sub_id}" id="find-out"><img src="${img1}" alt="" class="anh1" style=" width: 280px; height: 200px;"></a>
                    <a href="DetailProduct.jsp?id=${sub_id}" id="find-in"><img src="${img2}" alt="" class="anh2" style=" width: 280px;height: 200px;"></a>
                    <a href="DetailProduct.jsp?id=${sub_id}" class="name" title="${name}">${name}</a>
                    <c:choose>
                        <c:when test="${discount != '0'}">
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

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
