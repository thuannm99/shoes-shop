/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectionjdbc.other;

import connectionjdbc.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OtherDao {
    
    private Connection connection;

    public OtherDao() {
        this.connection = GetConnection.getConnection();
    }
    
    public int checkDiscountCode(String code){
        String sql = "select * from discount_code where code = ?";
        int discountValue = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, code);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                discountValue = rs.getInt("value_discount");
            }
        } catch (SQLException ex) {
            Logger.getLogger(OtherDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return discountValue;
    }
    
    public void deleteDiscountCode(String code){
        String sql = "delete from discount_code where code = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, code);
            int rs = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OtherDao.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
    
}
