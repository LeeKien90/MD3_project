package ra.model.daoImp;

import ra.model.dao.IUserDAO;
import ra.model.entity.Product;
import ra.model.entity.User;
import ra.model.util.ConnectionDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class UserDaoImp implements IUserDAO<User,Integer> {
    @Override
    public boolean register(User user) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_register(?,?,?,?)}");
            callSt.setString(1, user.getFullName());
            callSt.setString(2, user.getUserName());
            callSt.setString(3, user.getEmail());
            callSt.setString(4, user.getUserPassword());
            callSt.executeUpdate();
        } catch (SQLException ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }

    @Override
    public User login(String userName, String password) {
        Connection conn = null;
        CallableStatement callSt = null;
        User user = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_login(?,?)}");
            callSt.setString(1, userName);
            callSt.setString(2, password);
            ResultSet rs = callSt.executeQuery();
            user = new User();
            if (rs.next()) {
                user.setUserName(rs.getString("userName"));
                user.setUserPassword(rs.getString("userPassword"));
                user.setPermissions(rs.getBoolean("permissions"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return user;
    }


    @Override
    public List<User> findAll() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<User> listUser = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getAllUser()}");
            ResultSet rs = callSt.executeQuery();
            listUser = new ArrayList<>();
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("userId"));
                user.setFullName(rs.getString("fullName"));
                user.setUserName(rs.getString("userName"));
                user.setPermissions(rs.getBoolean("permissions"));
                user.setUserStatus(rs.getBoolean("userStatus"));
                listUser.add(user);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listUser;
    }

    @Override
    public boolean block(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_blockUser(?)}");
//       Thực hiện set giá trị cho các tham số vào
            callSt.setInt(1, id);
//           Thực hiện gọi procedure
            callSt.executeUpdate();
        } catch (SQLException ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }


    @Override
    public boolean unblock(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_unblockUser(?)}");
//       Thực hiện set giá trị cho các tham số vào
            callSt.setInt(1, id);
//           Thực hiện gọi procedure
            callSt.executeUpdate();
        } catch (SQLException ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }
}


