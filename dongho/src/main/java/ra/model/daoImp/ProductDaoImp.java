package ra.model.daoImp;

import ra.model.dao.IProductDAO;
import ra.model.entity.Product;
import ra.model.util.ConnectionDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImp implements IProductDAO<Product,String> {

    @Override
    public List<Product> seachProductByName(String name) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> listPro = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getProductByName()}");
            callSt.setString(1,name);
            ResultSet rs = callSt.executeQuery();
            listPro = new ArrayList<>();
            while (rs.next()) {
                Product pro = new Product();
                pro.setProductId(rs.getString("productId"));
                pro.setProductName(rs.getString("productName"));
                pro.setProductImage(rs.getString("productImage"));
                pro.setPrice(rs.getFloat("price"));
                pro.setQuantity(rs.getInt("quantity"));
                pro.setCreated(rs.getDate("created").toLocalDate());
                pro.setProductDescriptions(rs.getString("productDescriptions"));
                pro.setProductStatus(rs.getBoolean("productStatus"));
                listPro.add(pro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listPro;
    }

    @Override
    public List<Product> getProductByCategoryId(String id) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> listProduct = null;
        try {

            conn = ConnectionDB.openConnection();

            callSt = conn.prepareCall("{call proc_getProductByCatalogId(?)}");

            listProduct = new ArrayList<>();
            callSt.setString(1,id);
            ResultSet rs = callSt.executeQuery();

            while (rs.next()) {
                Product pro = new Product();
                pro.setProductName(rs.getString("productName"));
                pro.setProductImage(rs.getString("productImage"));
                pro.setPrice(rs.getFloat("price"));
                pro.setQuantity(rs.getInt("quantity"));
                pro.setProductDescriptions(rs.getString("descriptions"));
                listProduct.add(pro);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listProduct;
    }

    @Override
    public List<Product> findAll() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> listPro = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getAllProduct()}");
            ResultSet rs = callSt.executeQuery();
            listPro = new ArrayList<>();
            while (rs.next()) {
                Product pro = new Product();
                pro.setProductId(rs.getString("productId"));
                pro.setProductName(rs.getString("productName"));
                pro.setProductImage(rs.getString("productImage"));
                pro.setPrice(rs.getFloat("price"));
                pro.setQuantity(rs.getInt("quantity"));
                pro.setCreated(rs.getDate("created").toLocalDate());
                pro.setProductDescriptions(rs.getString("descriptions"));
                pro.setProductStatus(rs.getBoolean("productStatus"));
                listPro.add(pro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listPro;
    }

    @Override
    public Product findById(String id) {
        Product pro = null;
        Connection conn =null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getProductById(?)}");
            callSt.setString(1,id);
            ResultSet rs = callSt.executeQuery();
            pro = new Product();
            while (rs.next()){
                pro.setProductId(rs.getString("productId"));
                pro.setProductName(rs.getString("productName"));
                pro.setProductImage(rs.getString("productImage"));
                pro.setPrice(rs.getFloat("price"));
                pro.setQuantity(rs.getInt("quantity"));
                pro.setCreated(rs.getDate("created").toLocalDate());
                pro.setProductDescriptions(rs.getString("descriptions"));
                pro.setProductStatus(rs.getBoolean("productStatus"));
            }
        }catch (SQLException ex1){
            ex1.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }

        return pro;
    }

    @Override
    public boolean save(Product product) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_insertProduct(?,?,?,?,?,?,?,?)}");
//       Thực hiện set giá trị cho các tham số vào
            callSt.setString(1,product.getProductId());
            callSt.setString(2,product.getProductName());
            callSt.setFloat(3, product.getPrice());
            callSt.setInt(4,product.getQuantity());
            callSt.setDate(5,Date.valueOf(product.getCreated()));
            callSt.setString(6,product.getProductImage());
            callSt.setString(7, product.getProductDescriptions());
            callSt.setBoolean(8, product.isProductStatus());

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
    public boolean update(Product product) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_updateProduct(?,?,?,?,?,?,?)}");
//       Thực hiện set giá trị cho các tham số vào

            callSt.setString(1,product.getProductId());
            callSt.setString(2,product.getProductName());
            callSt.setFloat(3, product.getPrice());
            callSt.setInt(4,product.getQuantity());
            callSt.setDate(5,Date.valueOf(product.getCreated()));
            callSt.setString(6, product.getProductDescriptions());
            callSt.setBoolean(7, product.isProductStatus());
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
    public boolean delete(String id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_deleteProduct(?)}");
//       Thực hiện set giá trị cho các tham số vào
            callSt.setString(1, id);
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
