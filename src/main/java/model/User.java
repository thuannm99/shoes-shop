package model;

import java.util.ArrayList;
import java.util.List;
import other.Other;


public class User {
    private int id;
    private String name;
    private String email;           // regex abc@gmail.com
    private String phoneNumber;
    private String gender;         
    private String address;          
    private String birthday;        // format yyyy/MM/dd
    private List<TempProduct> temps;
    
    public User() {
        temps = new ArrayList();
    }
    private String avatar;          // link
    private String role;            // customer, employee, admin
    private int point;

    public User(String name, String email, String phoneNumber, String gender, String address, String birthday) {
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.address = address;
        this.birthday = birthday;
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

    public User(String name, String email, String phoneNumber, String gender, String address, String birthday, String avatar) {
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.address = address;
        this.birthday = birthday;
        this.avatar = avatar;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }
    
    
    public List<TempProduct> getTemps(){
        return temps;
    }
    
    public void addTempProduct(TempProduct temp){
        temps.add(temp);
    }
    
    public int getSizeTemps(){
        return temps.size();   
    }
    
    public void removeProduct(int id){
        for(TempProduct t: temps) {
            if(t.getId() == id){
                temps.remove(t);
                break;
            }
        }
    }
    
    public String sendEmail(String phoneNumber, String address){
        String msg = "\tMiaShoe xin k??nh ch??o qu?? kh??ch! \nC???m ??n qu?? kh??ch ???? ?????t h??ng tr??n trang web c???a ch??ng t??i! \n"
                + "Danh s??ch s???n ph???m c???a qu?? kh??ch bao g???m : \n";
        for(TempProduct t : temps){
            String price = Other.displayMoney((int)(t.getPrice()));
            String sub ="\t" + t.getName() + "\t" + price + "\t" + t.getSize() + "\n";
            msg += sub;
        }
        msg += "?????a ch??? nh???n h??ng : " + address + "\n";
        msg += "S??? ??i???n tho???i : " + phoneNumber + "\n";
        msg += "S???n ph???m s??? ???????c v???n chuy???n ?????n ?????a ch??? m???t c??ch s???m nh???t! Tr??n th??nh c???m ??n!";
        return msg;
    }
    
}
