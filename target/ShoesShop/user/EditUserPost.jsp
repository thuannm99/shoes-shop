<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="model.User"%>
<%@page import="connectionjdbc.user.UserService"%>
<%@page import="upload.Upload"%>
<%@page import="com.cloudinary.utils.ObjectUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.cloudinary.Cloudinary"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            User user = (User) session.getAttribute("currentSession");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phone_number");
            String address = request.getParameter("address");
            String gender = request.getParameter("gender");
            String day = request.getParameter("day");
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            if(day.length() == 1){
                day = "0" + day;
            }
            if(month.length() == 1){
                month = "0" + month;
            }
            String birth = year + "/" + month + "/" + day ;
            
            user.setName(name);
            user.setAddress(address);
            user.setEmail(email);
            user.setGender(gender);
            user.setPhoneNumber(phoneNumber);
            user.setBirthday(birth);
            
            new UserService().updateUser(user);
            response.sendRedirect("/EditInforUser.jsp");
        %>
    </body>
</html>
