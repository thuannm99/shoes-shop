package model;


public class ProductInBill {
    
    private Product product;
    private int size;
    private String date;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public ProductInBill() {
    }

    public ProductInBill(Product product, int size) {
        this.product = product;
        this.size = size;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int quantity) {
        this.size = quantity;
    }

    public ProductInBill(Product product, int size, String date) {
        this.product = product;
        this.size = size;
        this.date = date;
    }
    
    
    
    
}
