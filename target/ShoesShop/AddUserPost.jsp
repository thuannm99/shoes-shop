<%@page import="connectionjdbc.user.Security"%>
<%@page import="model.User"%>
<%@page import="connectionjdbc.user.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page</title>
    </head>
    <body>
        <%
            String code = request.getParameter("code");
            String codeConfirm = (String) session.getAttribute("confirmCode");
            if(code.equals(codeConfirm)){
                User user = (User) session.getAttribute("newUser");

                String username = (String) session.getAttribute("username");
                String password = (String) session.getAttribute("password");
                new UserService().addUser(user,username,password);
                session.removeAttribute("newUser");
                session.removeAttribute("password");
                session.removeAttribute("newUser");
                session.removeAttribute("confirmCode");
                response.sendRedirect("/ShoeShop/SignIn.jsp?error=0");
            }else{
                response.sendRedirect("/ShoeShop/Confirm.jsp?err=1");
            }
          
        %>
    </body>
</html>
