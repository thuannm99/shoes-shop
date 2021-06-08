package model;


public class TempProduct {
    
    private int id;
    private String name;
    private String img;
    private double price;
    private int size;

    public TempProduct(int id, String name, double price, int size) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.size = size;
    }

    public TempProduct() {
    }

    public TempProduct(int id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public TempProduct(int id, String name, String img, double price) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public TempProduct(int id, String name, String img, double price, int size) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.size = size;
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
    
    
}
