<%@page import="connectionjdbc.user.Security"%>
<%@page import="connectionjdbc.user.UserService"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String oldPass = request.getParameter("oldPass");
            String newPass = request.getParameter("newPass");
            User user = (User) session.getAttribute("currentUser");
            String password = new UserService().getPassword(user.getId());
            String hash = Security.hashPassword(oldPass);
            if(hash.equals(password)){
                new UserService().changePassword(user.getId(), oldPass, newPass);
                response.sendRedirect("EditInforUser.jsp");
            }else{
                response.sendRedirect("EditInforUser.jsp?err=1");
            }
        %>
    </body>
</html>
