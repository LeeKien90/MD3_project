package ra.model.service;

import ra.model.entity.User;

import java.util.List;

public interface IUserService<T,V>{
    boolean register(User user);
    User login(String userName, String password);
    List<T> findAll();
    boolean block(V id);
    boolean unblock(V id);


}
