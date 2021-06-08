
package model.location;

import java.util.List;


public class District {
    private int id;
    private String name;
    private List<Ward> ward;

    public District() {
    }

    public District(int id, String name, List<Ward> ward) {
        this.id = id;
        this.name = name;
        this.ward = ward;
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

    public List<Ward> getWard() {
        return ward;
    }

    public void setWard(List<Ward> ward) {
        this.ward = ward;
    }
    
    
}
