import connectionjdbc.GetConnection;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.sql.Connection;
import java.util.Properties;

public class Main {


        public static void send(final String from, final String password, String to, String subject, String msg){
            //Get properties object
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class",
                    "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");
            //get Session
            Session session = Session.getDefaultInstance(props,
                    new javax.mail.Authenticator() {
                        @Override
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(from, password);
                        }
                    });
            //compose message
            try {
                MimeMessage message = new MimeMessage(session);
                message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
                message.setSubject(subject);
                message.setText(msg);
                //send message
                Transport.send(message);
                System.out.println("message sent successfully");
            } catch (MessagingException e) {throw new RuntimeException(e);}

        }

        public static void main(String[] args) {
            send("shopban490@gmail.com","123456789A!@","hungtvhust@gmail.com","test",
                    "asdjaosd \n asdjasdi \n sadjaosjdia \n asdasdas");
        }

}
