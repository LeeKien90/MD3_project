package ra.model.serviceImp;

import ra.model.dao.ICategoryDAO;
import ra.model.dao.IProductDAO;
import ra.model.daoImp.CategoryDaoImp;
import ra.model.daoImp.ProductDaoImp;
import ra.model.entity.Category;
import ra.model.entity.Product;
import ra.model.entity.User;
import ra.model.service.IProductService;

import java.util.List;

public class ProductServiceImp implements IProductService<Product,String> {
    private IProductDAO<Product,String> productDAO = new ProductDaoImp();

    @Override
    public List<Product> seachProductByName(String name) {
        return productDAO.seachProductByName(name);
    }

    @Override
    public List<Product> getProductByCategoryId(String id) {
        return productDAO.getProductByCategoryId(id);
    }

    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public Product findById(String id) {
        return productDAO.findById(id);
    }

    @Override
    public boolean save(Product product) {
        return productDAO.save(product);
    }

    @Override
    public boolean update(Product product) {
        return productDAO.update(product);
    }

    @Override
    public boolean delete(String id) {
        return productDAO.delete(id);
    }


}
