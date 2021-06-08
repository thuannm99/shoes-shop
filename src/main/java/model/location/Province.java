package model.location;

import java.util.List;


public class Province {
    private int id;
    private String name;
    private List<District> districts;

    public Province() {
    }

    public Province(int id, String name, List<District> districts) {
        this.id = id;
        this.name = name;
        this.districts = districts;
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

    public List<District> getDistricts() {
        return districts;
    }

    public void setDistricts(List<District> districts) {
        this.districts = districts;
    }
    
    
}
