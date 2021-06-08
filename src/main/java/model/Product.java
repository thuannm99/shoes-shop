package model;


public class Product {
    private int id;
    private String name;
    private double price;
    private int discount;
    private String brand;
    private String type;   
    private String img1;
    private String img2;
    private String description;
    private String tag;
    private Quantity quantity;
    private int amountOfProduct;

    public Quantity getQuantity() {
        return quantity;
    }

    public void setQuantity(Quantity quantity) {
        this.quantity = quantity;
        amountOfProduct = quantity.getSize36() +  quantity.getSize37() +quantity.getSize38()
                + quantity.getSize39() + quantity.getSize40() + quantity.getSize41()
                + quantity.getSize42() + quantity.getSize43() + quantity.getSize44()
                + quantity.getSize45();
    }

    public Product(int id, String name, double price, int discount, String brand, String type, String img1, String img2, String description, String tag, Quantity quantity, DetailProduct detailProduct) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.brand = brand;
        this.type = type;
        this.img1 = img1;
        this.img2 = img2;
        this.description = description;
        this.tag = tag;
        this.quantity = quantity;
        this.detailProduct = detailProduct;
    }
    


    public DetailProduct getDetailProduct() {
        return detailProduct;
    }

    public void setDetailProduct(DetailProduct detailProduct) {
        this.detailProduct = detailProduct;
    }
    private DetailProduct detailProduct;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }
    

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Product(int id, String name, double price, int discount, String brand, 
            String type, String img1, String img2, String description, String tag,
            DetailProduct detailProduct) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.brand = brand;
        this.type = type;
        this.img1 = img1;
        this.img2 = img2;
        this.description = description;
        this.tag = tag;
        this.detailProduct.setDescription(detailProduct.getDescription());
        this.detailProduct.setImg1(detailProduct.getImg1());
        this.detailProduct.setImg2(detailProduct.getImg2());
        this.detailProduct.setImg3(detailProduct.getImg3());
        this.detailProduct.setTag(detailProduct.getTag());
    }

    public int getAmountOfProduct() {
        return amountOfProduct;
    }

    public void setAmountOfProduct(int amountOfProduct) {
        this.amountOfProduct = amountOfProduct;
    }

    
    
}
