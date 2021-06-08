<%@page import="connectionjdbc.other.OtherService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String code = request.getParameter("code");
            int discountCode = new OtherService().checkDiscountCode(code);
            if(discountCode == 0){
                response.sendRedirect("/ShoeShop/user/BuyNow.jsp?discount=0");
            }else{
                response.sendRedirect("/ShoeShop/user/BuyNow.jsp?discount="+discountCode);
            }
        %>
    </body>
</html>
