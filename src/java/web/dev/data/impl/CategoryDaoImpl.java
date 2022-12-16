package web.dev.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import web.dev.data.dao.CategoryDao;
import web.dev.data.driver.MySQLDriver;
import web.dev.data.model.Category;

public class CategoryDaoImpl implements CategoryDao {

    @Override
    public void insert(Category category) {
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "INSERT INTO CATEGORIES(ID, NAME, IMG, DESCRIPTION) VALUES(NULL,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, category.name);
            stmt.setString(2, category.img);
            stmt.setString(3, category.desc);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            Logger.getLogger("create category").log(Level.SEVERE, e.toString());
        }
    }

    @Override
    public void update(Category category) {
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "UPDATE CATEGORIES SET  NAME=?, IMG=? , DESCRIPTION=? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, category.name);
            stmt.setString(2, category.img);
            stmt.setString(3, category.desc);
            stmt.setInt(4, category.id);

            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
             Logger.getLogger("edit category").log(Level.SEVERE, e.toString());
        }
    }

    @Override
    public void delete(int categoryId) {
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "DELETE FROM CATEGORIES WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, categoryId);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            Logger.getLogger("delete category").log(Level.SEVERE, e.toString());
        }
    }

    @Override
    public Category find(int categoryId) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM CATEGORIES WHERE ID = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, categoryId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("description");
                return new Category(id, name, img, desc);
            }
        } catch (SQLException ex) {
        }

        return null;
    }

    @Override
    public List<Category> findAll() {
        // TODO Auto-generated method stub
        List<Category> categoryList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM CATEGORIES";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("description");
                categoryList.add(new Category(id, name, img, desc));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return categoryList;
    }

}
