/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectionjdbc.bill;

import connectionjdbc.GetConnection;
import connectionjdbc.product.ProductService;
import connectionjdbc.user.UserDao;
import connectionjdbc.user.UserService;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bill;
import model.Product;
import model.ProductInBill;
import model.TempProduct;
import model.User;

public class BillDao {
    private final Connection connection;

    public BillDao() {
        connection = GetConnection.getConnection();
    }
    
    public Bill getBillById(int id){
        Bill bill = null;
        String sql = "Select * from bill where id_bill = ?";
        
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                bill.setId(id);
                bill.setList(getDetailBill(id));
                bill.setDate(rs.getString("date"));
                bill.setTime(rs.getString("time"));
                bill.setStatus(rs.getString("status"));
            }
        }catch(SQLException ex){
            
        }
        return bill;
    }
    
    public List<Bill> getAllBillForCustomer(int id){
        List<Bill> bills = new ArrayList();
        
        String sql = "Select * from bill where id_customer = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Bill bill = new Bill();
                int id_bill = rs.getInt("id_bill");
                bill.setId(id_bill);
                bill.setList(getDetailBill(id_bill));
                bill.setDate(rs.getString("date"));
                bill.setTime(rs.getString("time"));
                bill.setStatus(rs.getString("status"));
                bills.add(bill);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bills;
    }
    
    public List<Bill> getAllBillApproving(){
        List<Bill> bills = new ArrayList();
        
        String sql = "Select * from bill where status = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "approving");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Bill bill = new Bill();
                int id_bill = rs.getInt("id_bill");
                bill.setId(id_bill);
                bill.setCustomer(new UserService().getUserById(rs.getInt("id_customer")));
                bill.setList(getDetailBill(id_bill));
                bill.setDate(rs.getString("date"));
                bill.setTime(rs.getString("time"));
                bill.setDiscountCode(rs.getInt("discount_code"));
                bills.add(bill);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bills;
    }
    
    public List<ProductInBill> getDetailBill(int idBill){
        String sql = "select * from detail_bill where id_bill = ?";
        List<ProductInBill> list = new ArrayList();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, idBill);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id_product");
                int size = rs.getInt("size");
                Product product = new ProductService().getProductById(id);
                list.add(new ProductInBill(product, size));
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Bill> getBillForDay(int day, int month, int year){
        List<Bill> bills = new ArrayList();
        String date = year + "/" + month + "/" + day;
        
        String sql = "Select * from bill where date = ?";
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, date);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Bill bill = new Bill();
                int id_bill = rs.getInt("id_bill");
                int id_customer = rs.getInt("id_customer");
                int id_employee = rs.getInt("id_employee");
                
                bill.setId(id_bill);
                User customer = new UserDao().getUserById(id_customer);
                bill.setCustomer(customer);
                User employee = new UserDao().getUserById(id_employee);
                bill.setEmployee(employee);
                
                bill.setDate(rs.getString("date"));
                bill.setTime(rs.getString("time"));
                bill.setStatus(rs.getString("status"));
                bill.setList(getDetailBill(id_bill));
                
                bills.add(bill);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bills;
    }
    

    public List<Bill> getBillForMonth(int month, int year){
        List<Bill> bills = new ArrayList();
        
        String sql = "select * from bill where date >= ? and date <= ?"; 
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,year+"/"+month+"/01");
            ps.setString(2,setTimeForMonth(month, year));
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Bill bill = new Bill();
                int id_bill = rs.getInt("id_bill");
                int id_customer = rs.getInt("id_customer");
                int id_employee = rs.getInt("id_employee");
                
                bill.setId(id_bill);
                User customer = new UserDao().getUserById(id_customer);
                bill.setCustomer(customer);
                User employee = new UserDao().getUserById(id_employee);
                bill.setEmployee(employee);
                
                bill.setDate(rs.getString("date"));
                bill.setTime(rs.getString("time"));
                bill.setStatus(rs.getString("status"));
                bill.setList(getDetailBill(id_bill));
                
                bills.add(bill);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bills;
    }
    

    public void createBill(Bill bill, List<TempProduct> list){
        
        String sql1 = "insert into bill(id_customer,date,time)"
                + " values(?,?,?);";
        int id = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1,bill.getCustomer().getId());
            ps.setString(2, bill.getDate());
            ps.setString(3, bill.getTime());
            
            int rs = ps.executeUpdate();
            if(rs == 0){
                throw new SQLException("Creating user failed, no rows affected!");
            }
            try(ResultSet generatedKey = ps.getGeneratedKeys()){
                if(generatedKey.next()){
                    id = generatedKey.getInt(1);
                }else {
                    throw new SQLException("Creating user failed, no ID obtained.");
                }
            }
        } catch (SQLException  ex) {
            Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        System.out.println(id);
        for(TempProduct t : list){
            String sql2 = "insert into list_product_bill(id_bill,id_product,quantity) "
                + " values(?,?,?)";
            try{
                PreparedStatement ps = connection.prepareStatement(sql2);
                ps.setInt(1,id);
                ps.setInt(2, t.getId());
                ps.setInt(3, t.getSize());
                
                int rs = ps.executeUpdate();
            }catch(SQLException ex){
                Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE,null,ex);
            }
        }
    }
    
    public void createBill2(Bill bill, List<TempProduct> list, String discountCode){
        
        String sql1 = "insert into bill(id_customer,date,time,discount_code)"
                + " values(?,?,?,?);";
        int id = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1,bill.getCustomer().getId());
            ps.setString(2, bill.getDate());
            ps.setString(3, bill.getTime());
            ps.setString(4, discountCode);
            
            int rs = ps.executeUpdate();
            if(rs == 0){
                throw new SQLException("Creating user failed, no rows affected!");
            }
            try(ResultSet generatedKey = ps.getGeneratedKeys()){
                if(generatedKey.next()){
                    id = generatedKey.getInt(1);
                }else {
                    throw new SQLException("Creating user failed, no ID obtained.");
                }
            }
        } catch (SQLException  ex) {
            Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        for(TempProduct t : list){
            String sql2 = "insert into list_product_bill(id_bill,id_product,quantity) "
                + " values(?,?,?)";
            try{
                PreparedStatement ps = connection.prepareStatement(sql2);
                ps.setInt(1,id);
                ps.setInt(2, t.getId());
                ps.setInt(3, t.getSize());
                
                int rs = ps.executeUpdate();
            }catch(SQLException ex){
                Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE,null,ex);
            }
        }
    }
 
    public void changeStatusBill(int id){
        String sql = "update bill set status = approved where id = ?";
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            
            int rs = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BillDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private String setTimeForMonth(int month, int year){
        switch(month){
            case 2:
                if(year % 4 == 0){
                    return year+"02/29";
                }else{
                    return year+"02/28";
                }
            case 4:
            case 6:
            case 9:
            case 11:
                return year+"/"+month+"/30";
            default:
                return year+"/"+month+"/31";
        }
    }
    

}
