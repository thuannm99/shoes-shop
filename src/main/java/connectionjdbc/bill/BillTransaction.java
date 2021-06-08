/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectionjdbc.bill;

import java.util.List;
import model.Bill;
import model.ProductInBill;
import model.TempProduct;

public class BillTransaction {
 
    
    private final BillDao billDao;

    public BillTransaction() {
        billDao = new BillDao();
    }
    
    public Bill getBillById(int id){
        return billDao.getBillById(id);
    }
    
    public List<Bill> getListBill(int id){
        return billDao.getAllBillForCustomer(id);
    }
    
    public List<Bill> getListApproving(){
        return billDao.getAllBillApproving();
    }
    
    public List<ProductInBill> getDetailBill(int id){
        return billDao.getDetailBill(id);
    }
    
    
    
    public List<Bill> getListBillForDay(int day, int month, int year){
        return billDao.getBillForDay(day, month, year);
    }
    
    public List<Bill> getListBillForMonth(int month, int year){
        return billDao.getBillForMonth(month, year);
    }
    
    public void createBill(Bill bill, List<TempProduct> list){
        billDao.createBill(bill,list);
    }
    
    public void createBill2(Bill bill, List<TempProduct> list,String discountCode){
        billDao.createBill2(bill,list,discountCode);
    }
    

}
