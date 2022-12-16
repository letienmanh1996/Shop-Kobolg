package web.dev.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.dev.data.dao.OrderDetailDao;
import web.dev.data.driver.MySQLDriver;
import web.dev.data.model.OrderDetail;

public class OrderDetailDaoImpl implements OrderDetailDao {

    @Override
    public void insert(OrderDetail orderdetail) {
        // TODO Auto-generated method stub
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "INSERT INTO ORDER_DETAILS (id, amount, product_id, order_id, price) VALUES(NULL, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderdetail.amount);
            stmt.setInt(2, orderdetail.productId);
            stmt.setDouble(3, orderdetail.orderId);
            stmt.setDouble(4, orderdetail.price);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    @Override
    public void update(OrderDetail orderdetail) {
        // TODO Auto-generated method stub
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "UPDATE ORDER_DETAILS SET AMOUNT=?, PRODUCT_ID=?, ORDER_ID=?, PRICE=? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderdetail.amount);
            stmt.setInt(2, orderdetail.productId);
            stmt.setDouble(3, orderdetail.orderId);
            stmt.setDouble(4, orderdetail.price);
            
            stmt.setDouble(5, orderdetail.id);


            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    @Override
    public void delete(int orderdetailId) {
        // TODO Auto-generated method stub
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "DELETE FROM ORDER_DETAILS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, orderdetailId);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    @Override
    public OrderDetail find(int orderdetailId) {
        // TODO Auto-generated method stub
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "SELECT * FROM ORDER_DETAILS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderdetailId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                int amount = rs.getInt("amount");
                int productId = rs.getInt("product_id");
                int orderId = rs.getInt("order_id");
                double price = rs.getDouble("price");
                return new OrderDetail(id, productId, orderId, amount, price);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;

    }

    @Override
    public List<OrderDetail> findAll() {
        // TODO Auto-generated method stub
        List<OrderDetail> orderdetail = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDER_DETAILS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int amount = rs.getInt("amount");
                int productId = rs.getInt("product_id");
                int orderId = rs.getInt("order_id");
                double price = rs.getDouble("price");
                orderdetail.add(new OrderDetail(id, productId, orderId, amount, price));
            }
        } catch (SQLException ex) {
        }

        return orderdetail;
    }

    @Override
    public List<OrderDetail> findByOrder(int orderId) {
         List<OrderDetail> orderdetail = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDER_DETAILS WHERE ORDER_ID = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int amount = rs.getInt("amount");
                int productId = rs.getInt("product_id");
                double price = rs.getDouble("price");
                orderdetail.add(new OrderDetail(id, productId, orderId, amount, price));
            }
        } catch (SQLException ex) {
        }

        return orderdetail;
    }
}
