package model.location;

import java.util.List;


public class Ward {
    private int id;
    private String name;
    private List<Village> villages;

    public Ward() {
    }

    public Ward(int id, String name, List<Village> villages) {
        this.id = id;
        this.name = name;
        this.villages = villages;
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

    public List<Village> getVillages() {
        return villages;
    }

    public void setVillages(List<Village> villages) {
        this.villages = villages;
    }
    
    
}
