/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectionjdbc.user;

import connectionjdbc.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

public class UserDao {

    private final Connection connection;

    public UserDao() {
        connection = GetConnection.getConnection();
    }

    public List<User> getAllInforCustomer() {
        List<User> users = new ArrayList();
        String sql = "Select * from infor where role = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "customer");

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id_user"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setAddress(resultSet.getString("address"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                user.setGender(resultSet.getString("gender"));
                user.setBirthday(resultSet.getString("birthday"));
                user.setAvatar(resultSet.getString("avatar"));
                user.setPoint(resultSet.getInt("point"));
                users.add(user);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return users;
    }

    public List<User> getAllInforEmployee() {
        List<User> users = new ArrayList();
        String sql = "Select * from infor where role = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "employee");

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id_user"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setAddress(resultSet.getString("address"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                user.setGender(resultSet.getString("gender"));
                user.setBirthday(resultSet.getString("birthday"));
                user.setAvatar(resultSet.getString("avatar"));
                user.setPoint(resultSet.getInt("point"));
                users.add(user);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return users;
    }
    
    

    public User getUserById(int id) {
        User user = new User();
        String sql = "Select * from infor where id_user = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                user.setId(resultSet.getInt("id_user"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                user.setAddress(resultSet.getString("address"));

                user.setGender(resultSet.getString("gender"));
                user.setBirthday(resultSet.getString("birthday"));
                user.setAvatar(resultSet.getString("avatar"));
                user.setPoint(resultSet.getInt("point"));
                user.setRole(resultSet.getString("role"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return user;
    }

    public User getUserByName(String name) {
        User user = new User();
        String sql = "Select * from infor where name = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                user.setId(resultSet.getInt("id_user"));
                user.setName(name);
                user.setEmail(resultSet.getString("email"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                user.setAddress(resultSet.getString("address"));
                user.setGender(resultSet.getString("gender"));
                user.setBirthday(resultSet.getString("birthday"));
                user.setAvatar(resultSet.getString("avatar"));
                user.setPoint(resultSet.getInt("point"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return user;
    }

    public User getUserByEmail(String email) {
        User user = null;
        String sql = "Select * from infor where email = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id_user"));
                user.setName(resultSet.getString("name"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                user.setAddress(resultSet.getString("address"));
                user.setGender(resultSet.getString("gender"));
                user.setBirthday(resultSet.getString("birthday"));
                user.setAvatar(resultSet.getString("avatar"));
                user.setPoint(resultSet.getInt("point"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
            return null;
        }
        return user;
    }
    
    public User getUserByPhoneNumber(String phoneNumber) {
        User user = null;
        String sql = "Select * from infor where phone_number = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, phoneNumber);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id_user"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setAddress(resultSet.getString("address"));
                user.setGender(resultSet.getString("gender"));
                user.setBirthday(resultSet.getString("birthday"));
                user.setAvatar(resultSet.getString("avatar"));
                user.setPoint(resultSet.getInt("point"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
            return null;
        }
        return user;
    }
    
    public boolean checkUsername(String username){
        String sql = "Select * from account where username = ?";
        int id = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                id = resultSet.getInt("id_account");
            }
        } catch (SQLException ex) {
            System.err.println(ex);
            return false;
        }
        if(id == 0){
            return false;
        }else{
            return true;
        }
    }
    
    
    public void UpdateAvatarUserByID(User user) {

        String sql = "update user set avatar = ? where id_user = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getAvatar());
            preparedStatement.setInt(2, user.getId());

            int rs = preparedStatement.executeUpdate();
            System.out.println(rs);

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    
    
    public void addUser(User user, String username, String password) {
        String sql1 = "insert into account(username,password) values(?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql1);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, Security.hashPassword(password));
            int rs = preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            System.err.println(ex);
        }

        int id_user = 0;
        String sql2 = "select * from account where username = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
            preparedStatement.setString(1, username);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                id_user = rs.getInt("id_account");
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        String sql = "insert into infor(id_user,name, email,phone_number,gender,address,birthday,avatar)"
                + " values(?,?,?,?,?,?,?,?)";
        try {

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id_user);
            preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPhoneNumber());
            preparedStatement.setString(5, user.getGender());
            preparedStatement.setString(6, user.getAddress());
            preparedStatement.setString(7, user.getBirthday());
            if("male".equals(user.getGender())){
                preparedStatement.setString(8, "https://res.cloudinary.com/hoangghiepp1302/image/upload/v1573658670/"
                        + "avatar/60182553_412166662672766_3511434831642755072_n_ijrvee.jpg");
            }else{
                preparedStatement.setString(8, "https://res.cloudinary.com/hoangghiepp1302/"
                        + "image/upload/v1573658681/avatar/default-female-avatar_smqakt.png");
            }
            int rs = preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            System.err.println(ex);
        }
    }

    public void deleteUser(int id) {

        String sql = "delete from user where id_user = ?";
        try {

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            int rs = preparedStatement.executeUpdate();
        } catch (SQLException ex) {

        }
    }

    public void updateUser(User user) {
        String sql = "update infor set name = ?, email = ?, phone_number = ?,"
                + "gender = ?, address = ?, birthday = ?, avatar = ?, role = ? where id = ?";

        try {

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPhoneNumber());
            preparedStatement.setString(4, user.getGender());
            preparedStatement.setString(5, user.getAddress());
            preparedStatement.setString(6, user.getBirthday());
            preparedStatement.setString(7, user.getAvatar());
            preparedStatement.setString(8, user.getRole());
            preparedStatement.setInt(9, user.getId());

            int rs = preparedStatement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public User getAccount(String username, String password) {
        String sql = "Select * from account where username = ? and password = ?";
//        String sql = "Select * from account where username = " + "'" + username + "'" + " "
//                + "and password = " + "'" +password + "'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, Security.hashPassword(password));

            ResultSet rs = ps.executeQuery();
            int id = 0;
            while (rs.next()) {
                id = rs.getInt("id_account");
            }
            return (id != 0)?(getUserById(id)):null;

        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public boolean changePassword(int id, String old, String newPas) {
        int id_acc = 0;
        String sql1 = "select * from account where id_account = ? and password = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql1)) {
            ps.setInt(1, id);
            ps.setString(2, Security.hashPassword(old));

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id_acc = rs.getInt("id_account");
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }

        if (id_acc != 0) {
            String sql = "update account set password = ? where id_account = ?";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, Security.hashPassword(newPas));
                ps.setInt(2, id);

                int rs = ps.executeUpdate();
                return true;
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return false;
    }
    
    public boolean changePassword2(int id, String newPas) {
        int id_acc = 0;
        String sql1 = "select * from account where id_account = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql1)) {
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id_acc = rs.getInt("id_account");
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }

        if (id_acc != 0) {
            String sql = "update account set password = ? where id_account = ?";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, Security.hashPassword(newPas));
                ps.setInt(2, id);

                int rs = ps.executeUpdate();
                return true;
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return false;
    }
    
    public String getPassword(int id){
        String password = "";
         String sql = "Select * from account where id_account = ?";
//        String sql = "Select * from account where username = " + "'" + username + "'" + " "
//                + "and password = " + "'" +password + "'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                password = rs.getString("password");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return password;
    }

}
