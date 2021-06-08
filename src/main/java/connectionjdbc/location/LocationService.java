/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectionjdbc.location;

import java.util.List;
import model.location.District;
import model.location.Province;
import model.location.Village;
import model.location.Ward;

/**
 *
 * @author hiepnguyen
 */
public class LocationService {
    
    private LocationDao ld;

    public LocationService() {
        ld = new LocationDao();
    }
    
    public List<Province> getListProvince(){
        return ld.getListProvince();
    }
    
    public List<District> getListDistrict(int idProvince){
        return ld.getListDistrict(idProvince);
    }
    
    public List<Ward> getListWard(int idWard){
        return ld.getListWard(idWard);
    }
    
    public List<Village> getListVillage(int idVillage){
        return ld.getListVillage(idVillage);
    }
    
    
}
