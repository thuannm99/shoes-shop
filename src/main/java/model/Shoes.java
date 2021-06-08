package model;


public class Shoes extends Product{
    
    private int quantityOfSize36;
    private int quantityOfSize37;
    private int quantityOfSize38;
    private int quantityOfSize39;
    private int quantityOfSize40;
    private int quantityOfSize41;
    private int quantityOfSize42;
    private int quantityOfSize43;
    private int quantityOfSize44;
    private int quantityOfSize45;

    public Shoes() {
        super();
    }
    

    public Shoes(int quantityOfSize36, int quantityOfSize37, int quantityOfSize38, 
            int quantityOfSize39, int quantityOfSize40, int quantityOfSize41, 
            int quantityOfSize42, int quantityOfSize43, int quantityOfSize44, 
            int quantityOfSize45) {
        
        this.quantityOfSize36 = quantityOfSize36;
        this.quantityOfSize37 = quantityOfSize37;
        this.quantityOfSize38 = quantityOfSize38;
        this.quantityOfSize39 = quantityOfSize39;
        this.quantityOfSize40 = quantityOfSize40;
        this.quantityOfSize41 = quantityOfSize41;
        this.quantityOfSize42 = quantityOfSize42;
        this.quantityOfSize43 = quantityOfSize43;
        this.quantityOfSize44 = quantityOfSize44;
        this.quantityOfSize45 = quantityOfSize45;
    }
    
    
    
    
    public Shoes(int quantityOfSize36, int quantityOfSize37, int quantityOfSize38, 
            int quantityOfSize39, int quantityOfSize40, int quantityOfSize41, int quantityOfSize42, 
            int quantityOfSize43, int quantityOfSize44, int quantityOfSize45, int id, String name, 
            double price, int discount, String brand, String type, String img1, String img2, 
            String description, String tag, DetailProduct detailProduct) {
        
        super(id, name, price, discount, brand, type, img1, img2, description, tag,detailProduct);
        this.quantityOfSize36 = quantityOfSize36;
        this.quantityOfSize37 = quantityOfSize37;
        this.quantityOfSize38 = quantityOfSize38;
        this.quantityOfSize39 = quantityOfSize39;
        this.quantityOfSize40 = quantityOfSize40;
        this.quantityOfSize41 = quantityOfSize41;
        this.quantityOfSize42 = quantityOfSize42;
        this.quantityOfSize43 = quantityOfSize43;
        this.quantityOfSize44 = quantityOfSize44;
        this.quantityOfSize45 = quantityOfSize45;
    }

    public int getQuantityOfSize36() {
        return quantityOfSize36;
    }

    public void setQuantityOfSize36(int quantityOfSize36) {
        this.quantityOfSize36 = quantityOfSize36;
    }

    public int getQuantityOfSize37() {
        return quantityOfSize37;
    }

    public void setQuantityOfSize37(int quantityOfSize37) {
        this.quantityOfSize37 = quantityOfSize37;
    }

    public int getQuantityOfSize38() {
        return quantityOfSize38;
    }

    public void setQuantityOfSize38(int quantityOfSize38) {
        this.quantityOfSize38 = quantityOfSize38;
    }

    public int getQuantityOfSize39() {
        return quantityOfSize39;
    }

    public void setQuantityOfSize39(int quantityOfSize39) {
        this.quantityOfSize39 = quantityOfSize39;
    }

    public int getQuantityOfSize40() {
        return quantityOfSize40;
    }

    public void setQuantityOfSize40(int quantityOfSize40) {
        this.quantityOfSize40 = quantityOfSize40;
    }

    public int getQuantityOfSize41() {
        return quantityOfSize41;
    }

    public void setQuantityOfSize41(int quantityOfSize41) {
        this.quantityOfSize41 = quantityOfSize41;
    }

    public int getQuantityOfSize42() {
        return quantityOfSize42;
    }

    public void setQuantityOfSize42(int quantityOfSize42) {
        this.quantityOfSize42 = quantityOfSize42;
    }

    public int getQuantityOfSize43() {
        return quantityOfSize43;
    }

    public void setQuantityOfSize43(int quantityOfSize43) {
        this.quantityOfSize43 = quantityOfSize43;
    }

    public int getQuantityOfSize44() {
        return quantityOfSize44;
    }

    public void setQuantityOfSize44(int quantityOfSize44) {
        this.quantityOfSize44 = quantityOfSize44;
    }

    public int getQuantityOfSize45() {
        return quantityOfSize45;
    }

    public void setQuantityOfSize45(int quantityOfSize45) {
        this.quantityOfSize45 = quantityOfSize45;
    }

    
    
}
