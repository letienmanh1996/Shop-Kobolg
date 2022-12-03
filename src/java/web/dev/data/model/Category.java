package web.dev.data.model;

public class Category {
    public int id;
    public String name;
    public String img;
    public String desc;

    public Category(int id, String name, String img, String desc) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.desc = desc;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Category(String name, String img, String desc) {
        this.name = name;
        this.img = img;
        this.desc = desc;
    }

    
    
}