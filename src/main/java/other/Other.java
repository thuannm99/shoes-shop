package other;


public class Other {
    
    
    public static String displayMoney(int price){
        String sale = String.valueOf(price);
        String result ="";
        int index = 1;
        for(int i = sale.length()-1 ; i >= 0; i--){
            char c = sale.charAt(i);
            if(index == 3 && i > 0){
                index = 1;
                result += c;
                result += ',';
            }else{
                result += c;
                index++;
            }
        }
        StringBuilder sb = new StringBuilder(result);
        return sb.reverse().toString() + "đ";
    }
    
    
    public static void main(String[] args) {
        System.out.println(displayMoney(200000));
    }
}
