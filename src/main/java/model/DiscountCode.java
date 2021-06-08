package model;

import java.util.Arrays;
import java.util.Locale;
import java.util.Random;


public class DiscountCode {
    
    private User user;
    private String code;
    private int value;
    
    
    private String upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    private String lower = upper.toLowerCase(Locale.ROOT);

    private String digits = "0123456789";

    private String alphanum = upper + lower + digits;

    private Random random;

    public DiscountCode(User user, int value) {
        this.user = user;
        this.value = value;
        this.code = creatNewCode();
    }

    public DiscountCode(int value) {
        this.value = value;
        this.code = creatNewCode();
    }
    
    
    
    private String creatNewCode(){
        random = new Random();
        int length = random.nextInt(4) + 6;
        char[] temp = new char[length];
        String result = "";
        for(int i = 0; i < length; i++){
            result += alphanum.charAt(random.nextInt(60));
        }
        return result;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }
    
    
    
}
