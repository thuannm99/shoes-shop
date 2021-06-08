<%@page import="connectionjdbc.user.UserService"%>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            User user = new UserService().getUserByEmail(email);
            if(user == null){
                response.sendRedirect("SignIn.jsp?err=1");
            }
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
                MimeMessage message = new MimeMessage(ses);
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
                String newPassword = new Security().newPassword();
                message.setSubject("Forgot Password");
                message.setText(newPassword);
                //send message  
                Transport.send(message);
                System.out.println("message sent successfully");
                new UserService().changePassword2(user.getId(), newPassword);
                response.sendRedirect("SignIn.jsp?err=0");
            } catch (javax.mail.MessagingException ex) {
                response.sendRedirect("SignIn.jsp?err=2");
            }
        %>
    </body>
</html>
