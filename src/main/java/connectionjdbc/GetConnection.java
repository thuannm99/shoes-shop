
package connectionjdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class GetConnection {

    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";

    public GetConnection() {
    }

    public static Connection getConnection() {
        final String URL = "jdbc:mysql://localhost:3306/shoes_sh?autoReconnect=true&useSSL=false"
                + "&useUnicode=yes&characterEncoding=UTF-8";
        final String USERNAME = "root";
        final String PASSWORD = "123456789";
        try {
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(GetConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    }
