/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectionjdbc.other;

/**
 *
 * @author hiepnguyen
 */
public class OtherService {
    
    private OtherDao otherDao;

    public OtherService() {
        otherDao = new OtherDao();
    }
    
    public int checkDiscountCode(String code){
        return otherDao.checkDiscountCode(code);
    }
    
    public void deleteDiscountCode(String code){
        otherDao.deleteDiscountCode(code);
    }
    
}
