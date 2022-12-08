package ra.model.serviceImp;

import ra.model.dao.ICategoryDAO;
import ra.model.daoImp.CategoryDaoImp;
import ra.model.entity.Category;
import ra.model.service.ICategoryService;

import java.util.List;

public class CategoryServiceImp implements ICategoryService<Category, Integer> {
    private ICategoryDAO<Category,Integer> categoryDAO = new CategoryDaoImp();
    @Override
    public List<Category> searchByName(String name) {
        return categoryDAO.searchByName(name);
    }

    @Override
    public List<Category> findAll() {
        return categoryDAO.findAll();
    }

    @Override
    public Category findById(Integer id) {
        return categoryDAO.findById(id);
    }

    @Override
    public boolean save(Category category) {
        return categoryDAO.save(category);
    }

    @Override
    public boolean update(Category category) {
        return categoryDAO.update(category);
    }

    @Override
    public boolean delete(Integer id) {
        return categoryDAO.delete(id);
    }
}
