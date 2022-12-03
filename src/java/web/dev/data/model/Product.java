package web.dev.data.model;

public class Product {
    public int id;
    public String name;
    public String desc;
    public String img;
    public double price;
    public int quantity;
    public int view;
    public int categoryId;

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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public Product(int id, String name, String desc, String img, double price, int quantity, int view, int categoryId) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.img = img;
        this.price = price;
        this.quantity = quantity;
        this.view = view;
        this.categoryId = categoryId;
    }

    public Product(String name, String desc, String img, double price, int quantity, int view, int categoryId) {
        this.name = name;
        this.desc = desc;
        this.img = img;
        this.price = price;
        this.quantity = quantity;
        this.view = view;
        this.categoryId = categoryId;
    }
    
}
