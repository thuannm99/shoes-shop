/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectionjdbc.product;

import model.Product;
import model.Shoes;

import java.util.List;

public class ProductService {
 
    private final ProductDao productDao;

    public ProductService() {
        productDao = new ProductDao();
    }
    
    public List<Product> getAllProduct(){
        return productDao.getAllProduct();
    }
    
    
    public List<Product> getAllProductForBrand(String brand){
        return productDao.getAllProductForBrand(brand);
    }
    
    public List<Product> getAllShoes(){
        return productDao.getAllShoes();
    }
    
    public List<Product> getAllOthers(){
        return productDao.getAllOthers();
    }
    public List<Product> getAllSaleProducts(){
        return productDao.getAllSaleProduct();
    }
    
    public List<Product> searchProductForName(String name){
        return productDao.searchProductForName(name);  
    }
   
    public List<Product> recommenProduct(Product product){
        return productDao.recommendProduct(product);
    }
    
    public Product searchProductById(int id){
        return productDao.searchProductById(id);
    }
    
    public Product getDescriptionProduct(int id){
        return productDao.getDescriptionProduct(id);
    }
    
    public Shoes getDescriptionShoes(int id){
        return productDao.getDescriptionShoes(id);
    }
    
    
    public Product getProductById(int id){
        return productDao.getProductById(id);
    }
    
    public void addProduct(Product product){
        productDao.addProduct(product);
    }
    
    public void deleteProduct(int id){
        productDao.deleteProduct(id);
    }
    
    public void updateProduct(Product product){
        productDao.updateProduct(product);
    }
    
    public List<Product> getAllProduct2(){
        return productDao.getAllProduct2();
    }
    
    public List<Product> getAllShoes2(){
        return productDao.getAllShoes2();
    }
    
    public List<Product> getAllOthers2(){
        return productDao.getAllOther2();
    }
    
    public void updateQuantity(int id_bill){
        productDao.updateQuantity(id_bill);
    }
    
    
    public List<Product> orderProductAscendingByName(List<Product> list){
//        return list.stream().sorted(Comparator.comparing(Product::getName))
//                .collect(Collectors.toList());
        return list;
    }
    
    public List<Product> orderProductAscendingByPrice(List<Product> list){
//        return list.stream().sorted((p1,p2) -> ((int)p1.getPrice()/100*(100-p1.getDiscount())
//                - (int)p2.getPrice()/100*(100-p2.getDiscount())))
//                .collect(Collectors.toList());
        return list;
    }
    
    public List<Product> orderProductDescendingByName(List<Product> list){
//        return list.stream().sorted((p1,p2) -> p2.getName().compareTo(p1.getName()))
//                .collect(Collectors.toList());
        return list;
    }
    
    public List<Product> orderProductDescendingByPrice(List<Product> list){
//        return list.stream().sorted((p1,p2) -> ((int)p2.getPrice()/100*(100-p2.getDiscount())
//                - (int)p1.getPrice()/100*(100-p1.getDiscount())))
//                .collect(Collectors.toList());
        return list;
    }
    
   
}
