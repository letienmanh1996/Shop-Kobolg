/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web.dev.data;

import web.dev.data.dao.CategoryDao;
import web.dev.data.dao.DatabaseDao;
import web.dev.data.dao.OrderDao;
import web.dev.data.dao.OrderDetailDao;
import web.dev.data.dao.ProductDao;
import web.dev.data.dao.UserDao;
import web.dev.data.impl.CategoryDaoImpl;
import web.dev.data.impl.ProductDaoImpl;
import web.dev.data.impl.UserDaoImpl;

public class Database extends DatabaseDao {
	
	@Override
	public UserDao getUserDao() {
            // TODO Auto-generated method stub
            return new UserDaoImpl();
	}

    @Override
    public CategoryDao getCategoryDao() {
        return new CategoryDaoImpl();
    }

    @Override
    public ProductDao getProductDao() {
        return new ProductDaoImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public OrderDetailDao getOrderDetailDao() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
