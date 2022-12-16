package web.dev.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import web.dev.data.dao.ProductDao;
import web.dev.data.driver.MySQLDriver;
import web.dev.data.model.Product;

public class ProductDaoImpl implements ProductDao {

    @Override
    public void insert(Product product) {
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "INSERT INTO PRODUCTS(ID, NAME, DESCRIPTION, IMG, PRICE, QUANTITY, CATEGORY_ID) VALUES(NULL,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.name);
            stmt.setString(2, product.desc);
            stmt.setString(3, product.img);
            stmt.setDouble(4, product.price);
            stmt.setInt(5, product.quantity);
            stmt.setInt(6, product.categoryId);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            Logger.getLogger("create product").log(Level.SEVERE, e.toString());
        }
    }

    @Override
    public void update(Product product) {
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "UPDATE PRODUCTS SET NAME = ?, DESCRIPTION = ?, IMG = ?, PRICE = ?, QUANTITY = ?, CATEGORY_ID = ? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.name);
            stmt.setString(2, product.desc);
            stmt.setString(3, product.img);
            stmt.setDouble(4, product.price);
            stmt.setInt(5, product.quantity);
            stmt.setInt(6, product.categoryId);
            stmt.setInt(7, product.id);
            stmt.execute();

        } catch (Exception e) {
            // TODO: handle exception
            Logger.getLogger("create product").log(Level.SEVERE, e.toString());
        }
    }

    @Override
    public void delete(int productId) {
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "DELETE FROM PRODUCTS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, productId);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            Logger.getLogger("delete product").log(Level.SEVERE, e.toString());
        }
    }

    @Override
    public Product find(int productId) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS WHERE ID = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, productId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String img = rs.getString("img");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                int categoryId = rs.getInt("category_id");
                return new Product(id, name, description, img, price, quantity, view, categoryId);
            }
        } catch (SQLException ex) {
        }

        return null;
    }

    @Override
    public List<Product> findAll() {
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String img = rs.getString("img");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                int categoryId = rs.getInt("category_id");
                productList.add(new Product(id, name, description, img, price, quantity, view, categoryId));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> findTopProduct() {
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS ORDER BY VIEW DESC LIMIT 4";
            PreparedStatement stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String img = rs.getString("img");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                int categoryId = rs.getInt("category_id");
                productList.add(new Product(id, name, description, img, price, quantity, view, categoryId));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> findByCategoryId(int categoryId) {
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS WHERE CATEGORY_ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, categoryId);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String img = rs.getString("img");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                productList.add(new Product(id, name, description, img, price, quantity, view, categoryId));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> findByName(String key) {
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS WHERE NAME LIKE ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + key + "%");

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String img = rs.getString("img");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                int categoryId = rs.getInt("category_id");
                productList.add(new Product(id, name, description, img, price, quantity, view, categoryId));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return productList;
    }

}
