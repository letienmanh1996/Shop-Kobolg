package web.dev.data.dao;

import java.util.List;
import web.dev.data.model.Product;

public interface ProductDao {

    public void insert(Product product);

    public void update(Product product);

    public void delete(int productId);

    public Product find(int productId);

    public List<Product> findAll();

    public List<Product> findByCategoryId(int categoryId);

    public List<Product> findTopProduct();

    public List<Product> findByName(String name);

    public List<Product> findByCategory(int category, String orderBy, String order);

}
