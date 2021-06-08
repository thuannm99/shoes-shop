<%-- 
    Document   : SendMail
    Created on : Nov 23, 2019, 4:08:34 PM
    Author     : hiepnguyen
--%>


<%@page import="model.MyGmail"%>
<%@page import="model.User"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="connectionjdbc.user.Security"%>
<%@page import="com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            User user = (User) request.getAttribute("newUser");
            String username = (String) request.getAttribute("username");
            String password = (String) request.getAttribute("password");
            Security security = new Security();

            //Get properties object    
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class",
                    "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");
            //get Session   
            Session ses = Session.getInstance(props, 
                    new javax.mail.Authenticator(){
                        protected PasswordAuthentication getPasswordAuthentication(){
                            return new javax.mail.PasswordAuthentication(MyGmail.username, MyGmail.password);
                        }
                    });
            //compose message    
            try {
                String confirmCode = security.getConfirmCode();
                MimeMessage message = new MimeMessage(ses);
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(request.getParameter("email")));
                message.setSubject("Confirm Email");
                message.setText(confirmCode);
                //send message  
                Transport.send(message);
                System.out.println("message sent successfully");
                session.setAttribute("newUser", user);
                session.setAttribute("username", username);
                session.setAttribute("password", password);
                session.setAttribute("confirmCode", confirmCode);
                response.sendRedirect("/ShoeShop/Confirm.jsp");
                
            } catch (javax.mail.MessagingException ex) {
                System.err.println("Failed : " + ex.getMessage());
                response.sendRedirect("/ShoeShop/SignUp.jsp?error=1");
            }
        %>

    </body>
</html>
