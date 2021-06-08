/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectionjdbc.product;

import connectionjdbc.GetConnection;
import connectionjdbc.bill.BillTransaction;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.DetailProduct;
import model.Product;
import model.ProductInBill;
import model.Quantity;
import model.Shoes;

public class ProductDao {

    private final Connection connection;

    public ProductDao() {
        connection = GetConnection.getConnection();
    }

    public List<Product> getAllProduct() {
        List<Product> products = new ArrayList();
        String sql = "Select * from product";

        try {
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setDiscount(resultSet.getInt("discount"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setType(resultSet.getString("type"));
                products.add(product);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return products;
    } // for customer

    public List<Product> getAllProductForBrand(String brand) {
        List<Product> products = new ArrayList();
        String sql = "Select * from product where brand = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, brand);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setDiscount(resultSet.getInt("discount"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setType(resultSet.getString("type"));
                products.add(product);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return products;
    } // for customer

    public List<Product> getAllShoes() {
        List<Product> list = new ArrayList();
        String sql = "Select * from product where type = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "shoes");

            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setDiscount(resultSet.getInt("discount"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setType(resultSet.getString("type"));
                list.add(product);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return list;
    } // for customer

    public List<Product> getAllOthers() {
        List<Product> products = new ArrayList();
        String sql = "Select * from product where type = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "shocks");

            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setDiscount(resultSet.getInt("discount"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setType(resultSet.getString("type"));
                products.add(product);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return products;
    } // for customer

    public List<Product> getAllSaleProduct() {
        List<Product> products = new ArrayList();
        String sql = "Select * from product where discount > 0";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setDiscount(resultSet.getInt("discount"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setType(resultSet.getString("type"));
                products.add(product);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return products;
    } // for customer
    
    public List<Product> searchProductForName(String name) {
        List<Product> products = new ArrayList();
        String sql = "Select * from product where name like ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "%" + name + "%");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setDiscount(resultSet.getInt("discount"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setType(resultSet.getString("type"));
                products.add(product);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return products;
    }

    public Product searchProductById(int id) {
        Product product = new Product();
        String sql = "Select * from product where id_product = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setDiscount(resultSet.getInt("discount"));
                product.setImg1(resultSet.getString("img1"));
                product.setImg2(resultSet.getString("img2"));
                product.setType(resultSet.getString("type"));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return product;
    }

    public List<Product> recommendProduct(Product product) {
        List<Product> products = new ArrayList();
        List<Integer> idList = new ArrayList();
        String tag = "";
        String sql1 = "Select * from describe_product where id_product = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql1);
            preparedStatement.setInt(1, product.getId());
            //preparedStatement.setString(1,  tag );
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                tag = resultSet.getString("tag");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "Select * from describe_product where tag like ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "%" + tag + "%");
            //preparedStatement.setString(1,  tag );
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                if (idList.size() <= 3) {
                    int id = resultSet.getInt("id_product");
                    if (id != product.getId()) {
                        idList.add(id);
                    }
                } else {
                    break;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        for(Integer i : idList){
            String sql2 = "Select * from product where id_product = ?";
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(sql2);
                preparedStatement.setInt(1, i);
                ResultSet resultSet = preparedStatement.executeQuery();
                while(resultSet.next()){
                    Product p = new Product();
                    p.setId(i);
                    p.setName(resultSet.getString("name"));
                    p.setPrice(resultSet.getDouble("price"));
                    p.setBrand(resultSet.getString("brand"));
                    p.setDiscount(resultSet.getInt("discount"));
                    p.setImg1(resultSet.getString("img1"));
                    p.setImg2(resultSet.getString("img2"));
                    product.setType(resultSet.getString("type"));
                    products.add(p);
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return products;
    }

    public void addProduct(Product product) {
        String sql = "insert into product(name, price,discount,brand,img1,img2,type"
                + "role)"
                + " values (?,?,?,?,?,?,?,?)";

        try {

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, product.getName());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.setInt(3, product.getDiscount());
            preparedStatement.setString(4, product.getBrand());
            preparedStatement.setString(5, product.getImg1());
            preparedStatement.setString(6, product.getImg2());
            preparedStatement.setString(7, product.getType());

            int rs = preparedStatement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void deleteProduct(int id) {
        String sql = "delete from user where id_user = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            int rs = preparedStatement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateProduct(Product product) {
        String sql = "update product set name = ?, price = ?,"
                + "discount = ?, brand = ?, img1 = ?, img2 = ?, type = ? where id = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, product.getName());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.setInt(3, product.getDiscount());
            preparedStatement.setString(4, product.getBrand());
            preparedStatement.setString(5, product.getImg1());
            preparedStatement.setString(6, product.getImg2());
            preparedStatement.setInt(7, product.getId());
            preparedStatement.setString(8, product.getType());

            int rs = preparedStatement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public Product getDescriptionProduct(int id) {
        Product product = getProductById(id);
        if (product == null) {
            return null;
        }
        String sql = "Select * from describe_product where id_product = ?";
        DetailProduct detailProduct = new DetailProduct();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                detailProduct.setDescription(resultSet.getString("description"));
                detailProduct.setImg1(resultSet.getString("img1"));
                detailProduct.setImg2(resultSet.getString("img2"));
                detailProduct.setImg3(resultSet.getString("img3"));
                detailProduct.setTag(resultSet.getString("tag"));
                product.setDetailProduct(detailProduct);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        String sql2 = "SELECT * FROM quantity where id_shoes = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql2);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int size36 = rs.getInt("size36");
                int size37 = rs.getInt("size37");
                int size38 = rs.getInt("size38");
                int size39 = rs.getInt("size39");
                int size40 = rs.getInt("size40");
                int size41 = rs.getInt("size41");
                int size42 = rs.getInt("size42");
                int size43 = rs.getInt("size43");
                int size44 = rs.getInt("size44");
                int size45 = rs.getInt("size45");
               
                product.setQuantity(new Quantity(size36, size37, size38, size39, size40, size41, size42, size43, size44, size45));
            }
            }catch (SQLException ex) {
                Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        return product;
 
    }

    public Shoes getDescriptionShoes(int id) {
        Product product = getProductById(id);
        if (product == null) {
            return null;
        }
        String sql = "Select * from describe_product where id_product = ?";
        DetailProduct detailProduct = new DetailProduct();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                detailProduct.setDescription(resultSet.getString("description"));
                detailProduct.setImg1(resultSet.getString("img1"));
                detailProduct.setImg2(resultSet.getString("img2"));
                detailProduct.setImg3(resultSet.getString("img3"));
                detailProduct.setTag(resultSet.getString("tag"));
                product.setDetailProduct(detailProduct);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        String sql2 = "Select * from quantity where id_shoes = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql2);
            ps.setInt(1, product.getId());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product.getQuantity().setSize36(rs.getInt("36"));
                product.getQuantity().setSize37(rs.getInt("37"));
                product.getQuantity().setSize38(rs.getInt("38"));
                product.getQuantity().setSize39(rs.getInt("39"));
                product.getQuantity().setSize40(rs.getInt("40"));
                product.getQuantity().setSize41(rs.getInt("41"));
                product.getQuantity().setSize42(rs.getInt("42"));
                product.getQuantity().setSize43(rs.getInt("43"));
                product.getQuantity().setSize44(rs.getInt("44"));
                product.getQuantity().setSize45(rs.getInt("45"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (Shoes) product;
    }

    public Product getProductById(int id) {
        String sql = "Select * from product where id_product = ?";
        Product product = new Product();
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                product.setId(rs.getInt("id_product"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setBrand(rs.getString("brand"));
                product.setDiscount(rs.getInt("discount"));
                product.setImg1(rs.getString("img1"));
                product.setImg2(rs.getString("img2"));
                product.setType(rs.getString("type"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
            return null;
        }
        return product;
    }

    
    public List<Product> getAllProduct2(){
        List<Product> products = new ArrayList();
        String sql = "Select * from product";

        try {
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setType(resultSet.getString("type"));
                products.add(product);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        int index = 0;
        for(Product p : products){
             String sql2 = "SELECT * FROM quantity where id_shoes = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql2);
            ps.setInt(1,p.getId());
            ResultSet rs = ps.executeQuery();
            if("shoes".equals(p.getType())){
                while (rs.next()) {
                    int size36 = rs.getInt("size36");
                    int size37 = rs.getInt("size37");
                    int size38 = rs.getInt("size38");
                    int size39 = rs.getInt("size39");
                    int size40 = rs.getInt("size40");
                    int size41 = rs.getInt("size41");
                    int size42 = rs.getInt("size42");
                    int size43 = rs.getInt("size43");
                    int size44 = rs.getInt("size44"); 
                    int size45 = rs.getInt("size45");

                    products.get(index).setQuantity(new Quantity(size36, size37, size38, size39, 
                            size40, size41, size42, size43, size44, size45));
                    }
            }else{
                while(rs.next()){
                    int number = rs.getInt("others");
                    products.get(index).setAmountOfProduct(number);
                }
            }
            }catch (SQLException ex) {
                Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        index++;
        }
        return products;
    } // for employee
    
    public List<Product> getAllShoes2(){
        List<Product> products = new ArrayList();
        String sql = "Select * from product where type = 'shoes'";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setType(resultSet.getString("type"));
                products.add(product);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        int index = 0;
        for(Product p : products){
             String sql2 = "SELECT * FROM quantity where id_shoes = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql2);
            ps.setInt(1,p.getId());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int size36 = rs.getInt("size36");
                int size37 = rs.getInt("size37");
                int size38 = rs.getInt("size38");
                int size39 = rs.getInt("size39");
                int size40 = rs.getInt("size40");
                int size41 = rs.getInt("size41");
                int size42 = rs.getInt("size42");
                int size43 = rs.getInt("size43");
                int size44 = rs.getInt("size44"); 
                int size45 = rs.getInt("size45");

                products.get(index).setQuantity(new Quantity(size36, size37, size38, size39, 
                        size40, size41, size42, size43, size44, size45));
                }
            
            }catch (SQLException ex) {
                Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        index++;
        }
        return products;
    }   // for employee
    
    public List<Product> getAllOther2(){
        List<Product> products = new ArrayList();
        String sql = "Select * from product where type != 'shoes'";

        try {
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id_product"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setBrand(resultSet.getString("brand"));
                product.setType(resultSet.getString("type"));
                products.add(product);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        int index = 0;
        for(Product p : products){
             String sql2 = "SELECT * FROM quantity where id_shoes = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql2);
            ps.setInt(1,p.getId());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                    int number = rs.getInt("others");
                    products.get(index).setAmountOfProduct(number);
                }
            }catch (SQLException ex) {
                Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        index++;
        }
        return products;
    }   // for employee
    
    public void updateQuantity(int id_bill){
        List<ProductInBill> products = new BillTransaction().getDetailBill(id_bill);
        for(ProductInBill p : products){    
            int temp = p.getSize();
            String size = "size" + temp;
            String size2 = "size" + temp + " -1";
            String sql = "update quantity set " + size + " = " + size2 + " where id_shoes = ? ";
            
            try {
                PreparedStatement ps = connection.prepareStatement(sql);
//                ps.setString(1, size);
//                ps.setString(2, size2);
//                ps.setInt(3, p.getProduct().getId());
                ps.setInt(1, p.getProduct().getId());
                
                int rs = ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
    }
}
