/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectionjdbc.location;

import connectionjdbc.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.location.District;
import model.location.Province;
import model.location.Village;
import model.location.Ward;

/**
 *
 * @author hiepnguyen
 */
public class LocationDao {
    
    private Connection connection;

    public LocationDao() {
        connection = GetConnection.getConnection();
    }
    
    
    public List<Province> getListProvince(){
        List<Province> list = new ArrayList();
        
        String sql = "Select * from province order by name";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Province province = new Province();
                province.setId(rs.getInt("provinceid"));
                province.setName(rs.getString("name"));
                list.add(province);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LocationDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<District> getListDistrict(int idProvince){
        List<District> list = new ArrayList();
        
        String sql = "Select * from district where provinceid = ? order by name";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, idProvince);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                District district = new District();
                district.setId(rs.getInt("districtid"));
                district.setName(rs.getString("name"));
                list.add(district);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LocationDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<Ward> getListWard(int idDistrict){
        List<Ward> list = new ArrayList();
        
        String sql = "Select * from ward where districtid = ? order by name";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, idDistrict);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Ward ward = new Ward();
                ward.setId(rs.getInt("wardid"));
                ward.setName(rs.getString("name"));
                list.add(ward);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LocationDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<Village> getListVillage(int idWard){
        List<Village> list = new ArrayList();
        
        String sql = "Select * from village where wardid = ? order by name";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, idWard);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Village village = new Village();
                village.setId(rs.getInt("villageid"));
                village.setName(rs.getString("name"));
                list.add(village);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LocationDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
