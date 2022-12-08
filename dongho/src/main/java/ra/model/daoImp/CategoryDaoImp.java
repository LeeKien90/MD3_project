package ra.model.daoImp;

import ra.model.dao.ICategoryDAO;
import ra.model.entity.Category;
import ra.model.util.ConnectionDB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDaoImp implements ICategoryDAO<Category, Integer> {
    @Override
    public List<Category> searchByName(String name) {
        List<Category> listCategory = null;
        Connection conn =null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getCatalogByName(?)}");
            callSt.setString(1,name);
            ResultSet rs = callSt.executeQuery();
            listCategory = new ArrayList<>();
            while (rs.next()){
                Category cat = new Category();
                cat.setCatalogId(rs.getInt("catalogId"));
                cat.setCatalogName(rs.getString("catalogName"));
                cat.setDescriptions(rs.getString("descriptions"));
                cat.setCatalogStatus(rs.getBoolean("catalogStatus"));
                listCategory.add(cat);
            }
        }catch (SQLException ex1){
            ex1.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }

        return listCategory;
    }

    @Override
    public List<Category> findAll() {
        List<Category> listCategory = null;
        Connection conn =null;
        CallableStatement callSt = null;
        try {
        conn = ConnectionDB.openConnection();
        callSt = conn.prepareCall("{call proc_getAllCatalog()}");
        ResultSet rs = callSt.executeQuery();
        listCategory = new ArrayList<>();
        while (rs.next()){
            Category cat = new Category();
            cat.setCatalogId(rs.getInt("catalogId"));
            cat.setCatalogName(rs.getString("catalogName"));
            cat.setDescriptions(rs.getString("descriptions"));
            cat.setCatalogStatus(rs.getBoolean("catalogStatus"));
            listCategory.add(cat);
        }
        }catch (SQLException ex1){
            ex1.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return listCategory;
    }

    @Override
    public Category findById(Integer id) {
        Category cat = null;
        Connection conn =null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getCatalogById(?)}");
            callSt.setInt(1,id);
            ResultSet rs = callSt.executeQuery();
            cat = new Category();
           if (rs.next()){
                cat.setCatalogId(rs.getInt("catalogId"));
                cat.setCatalogName(rs.getString("catalogName"));
                cat.setDescriptions(rs.getString("descriptions"));
                cat.setCatalogStatus(rs.getBoolean("catalogStatus"));
            }
        }catch (SQLException ex1){
            ex1.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }

        return cat;
    }

    @Override
    public boolean save(Category category) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_insertCatalog(?,?,?,?)}");
//       Thực hiện set giá trị cho các tham số vào
            callSt.setInt(1,category.getCatalogId());
            callSt.setString(2,category.getCatalogName());
            callSt.setString(3,category.getDescriptions());
            callSt.setBoolean(4, category.isCatalogStatus());
//           Thực hiện gọi procedure
            callSt.executeUpdate();
        }catch (SQLException ex){
            result = false;
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return result;
    }

    @Override
    public boolean update(Category category) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_updateCatalog(?,?,?,?)}");
//       Thực hiện set giá trị cho các tham số vào
            callSt.setInt(1,category.getCatalogId());
            callSt.setString(2,category.getCatalogName());
            callSt.setString(3,category.getDescriptions());
            callSt.setBoolean(4, category.isCatalogStatus());
//           Thực hiện gọi procedure
            callSt.executeUpdate();
        }catch (SQLException ex){
            result = false;
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return result;
    }

    @Override
    public boolean delete(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_deleteCatalog(?)}");
//       Thực hiện set giá trị cho các tham số vào
            callSt.setInt(1, id);
//           Thực hiện gọi procedure
            callSt.executeUpdate();
        }catch (SQLException ex){
            result = false;
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return result;
    }
}
