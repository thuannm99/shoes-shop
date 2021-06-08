<%@page import="connectionjdbc.user.UserService"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    
    <body>
        <% 
            //User user = (User) session.getAttribute("currentUser");
            User user = (User) session.getAttribute("currentUser");
            if(user.getRole().equals("admin")){
                response.sendRedirect("/ShoeShop/user/MyAccount.jsp");
            }else if(user.getRole().equals("employee")){
                response.sendRedirect("/ShoeShop/user/MyAccount.jsp");
            }else{
                response.sendRedirect("/ShoeShop/home.jsp");
            }
        %>
    </body>
</html>
