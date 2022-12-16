package web.dev.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import web.dev.data.dao.OrderDao;
import web.dev.data.driver.MySQLDriver;
import web.dev.data.model.Order;

public class OrderDaoImpl implements OrderDao {

    @Override
    public void insert(Order order) {
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "INSERT INTO ORDERS(id, CODE, DESCRIPTION, STATUS, USER_ID) VALUES(NULL,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.code);
            stmt.setString(2, order.description);
            stmt.setString(3, order.status);
            stmt.setInt(4, order.userId);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    @Override
    public void update(Order order) {

        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE ORDERS SET CODE=?, DESCRIPTION=?, STATUS=?, USER_ID =? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.code);
            stmt.setString(2, order.description);
            stmt.setString(3, order.status);
            stmt.setInt(4, order.userId);

            stmt.setInt(5, order.id);
            stmt.execute();
        } catch (Exception e) {
        }
    }

    @Override
    public void delete(int orderId) {
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "DELETE FROM ORDER WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, orderId);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            Logger.getLogger("delete order").log(Level.SEVERE, e.toString());
        }
    }

    @Override
    public Order find(int orderId) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDERS WHERE ID = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String code = rs.getString("code");
                String desc = rs.getString("description");
                String status = rs.getString("status");
                int userId = rs.getInt("user_id");
                return new Order(orderId, code, desc, status, userId);
            }
        } catch (SQLException ex) {
        }

        return null;
    }

    @Override
    public List<Order> findAll() {
        List<Order> orderList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDERS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String description = rs.getString("description");
                String status = rs.getString("status");
                int userId = rs.getInt("user_id");
                orderList.add(new Order(id, code, description, status, userId));
            }
        } catch (SQLException ex) {
        }

        return orderList;
    }

    @Override
    public Order find(String code) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDERS WHERE CODE = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, code);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String description = rs.getString("description");
                String status = rs.getString("status");
                int userId = rs.getInt("user_id");
                return new Order(id, code, description, status, userId);
            }
        } catch (SQLException ex) {
        }

        return null;
    }

    @Override
    public List<Order> findByStatus(String status) {
        List<Order> orderList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDERS WHERE STATUS=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, status);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String description = rs.getString("description");
                int userId = rs.getInt("user_id");
                orderList.add(new Order(id, code, description, status, userId));
            }
        } catch (SQLException ex) {
        }

        return orderList;
    }

    @Override
    public int countOrderByDay(String date) {
           int count = 0;
        Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "SELECT COUNT(*) AS count FROM orders where date(created_at)=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, date);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                count = rs.getInt("count");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    
    }

}
