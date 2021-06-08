<%@page import="connectionjdbc.user.UserService"%>
<%@page import="upload.Upload"%>
<%@page import="model.User"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String url = "";
            DiskFileItemFactory diskFileItemFactory =new DiskFileItemFactory();
            diskFileItemFactory.setRepository(new File("/home/hiepnguyen/Pictures/ImgUpload/"));
            
            ServletFileUpload fileUpload = new ServletFileUpload(diskFileItemFactory);
            List<FileItem> fileItems = fileUpload.parseRequest(request);
            
            for(FileItem fileItem : fileItems){
                if(!fileItem.isFormField()){
                    if(fileItem.getFieldName().equals("file")){
                        File file = new File("/home/hiepnguyen/Pictures/ImgUpload/" + fileItem.getName());
                        fileItem.write(file);
                        url = fileItem.getName();
                    }
                }
            }
            
            String avatar = new Upload().uploadAvatarToCloud(url);
            User user = (User)session.getAttribute("currentUser");
            user.setAvatar(avatar);
            new UserService().updateAvatarUserById(user);
            response.sendRedirect("/ShoeShop/user/EditInforUser.jsp");
        %>
    </body>
</html>
