package web.dev.data.model;

public class OrderDetail {
    public int id;
    public int productId;
    public int order_id;
    public int amount;

    public OrderDetail(int productId, int order_id, int amount) {
        this.productId = productId;
        this.order_id = order_id;
        this.amount = amount;
    }

    public OrderDetail(int id, int productId, int order_id, int amount) {
        this.id = id;
        this.productId = productId;
        this.order_id = order_id;
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    
}
