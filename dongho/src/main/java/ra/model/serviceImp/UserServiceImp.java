package ra.model.serviceImp;

import ra.model.dao.IUserDAO;
import ra.model.daoImp.UserDaoImp;
import ra.model.entity.User;
import ra.model.service.IUserService;

import java.util.List;

public class UserServiceImp implements IUserService<User,Integer> {
    private static final IUserDAO<User, Integer> userDAO = new UserDaoImp();
    @Override
    public boolean register(User user) {
        return userDAO.register(user);
    }

    @Override
    public User login(String userName, String password) {
        return userDAO.login(userName,password);
    }


    @Override
    public List<User> findAll() {
        return userDAO.findAll();
    }

    @Override
    public boolean block(Integer id) {
        return userDAO.block(id);
    }

    @Override
    public boolean unblock(Integer id) {
        return userDAO.unblock(id);
    }




}
