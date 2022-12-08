package ra.controller;

import ra.model.entity.Category;
import ra.model.entity.Product;
import ra.model.service.ICategoryService;
import ra.model.service.IProductService;
import ra.model.serviceImp.CategoryServiceImp;
import ra.model.serviceImp.ProductServiceImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;
import java.util.List;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 10
)
@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {
    private static IProductService<Product, String> productService = new ProductServiceImp();
    private static ICategoryService<Category, Integer> categoryService = new CategoryServiceImp();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action.equals("getAll")) {
            getAllProduct(request, response);
        } else if (action.equals("InitCreate")) {
            //Lay danh sach danh muc roi chuyen sang trang createdProduct.jsp
            List<Category> listCategory = categoryService.findAll();
            request.setAttribute("listCategory", listCategory);
            request.getRequestDispatcher("views/admin/createdProduct.jsp").forward(request, response);
        } else if (action != null && action.equals("Detail")) {
            String productId = request.getParameter("productId");
            Product productDetail = productService.findById(productId);
            request.setAttribute("productDetail", productDetail);
            request.getRequestDispatcher("views/admin/productDetail.jsp").forward(request, response);
        }
        if (action != null && action.equals("Update")) {
            String productId = request.getParameter("productId");
            Product productUpdate = productService.findById(productId);
            List<Category> listCategory = categoryService.findAll();
            request.setAttribute("listCategory", listCategory);
            request.setAttribute("productUpdate", productUpdate);
            request.getRequestDispatcher("views/admin/updateProduct.jsp").forward(request, response);
        } else if (action.equals("Delete")) {
            String productId = request.getParameter("productId");
            boolean result = productService.delete(productId);
            if (result) {
                getAllProduct(request, response);
            } else {
                request.getRequestDispatcher("views/admin/error.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action.equals("Created")) {
            Product product = new Product();
            //Lay du lieu anh tu request day vao db va folder
            //db: chua link den anh
            //folder: chua anh upload
            //B1: Tao thu muc chua anh upload
            String pathFolderImage = "C:\\Users\\askih\\OneDrive\\Desktop\\lam bai tap\\rikkei\\dongho\\src\\main\\webapp\\views\\images";
            File file = new File(pathFolderImage);
            if (!file.exists()) {
                file.mkdir();
            }
//B2. Lay du lieu anh tu request, add duong dan vao doi tuong product, ghi anh vao folder images
            Part part = request.getPart("image");

            //part nay chua anh chinh cua product
            //--set duong dan anh chinh vao doi tuong product can them moi
            product.setProductImage(part.getSubmittedFileName());
            //--ghi anh chinh vao folder images
            part.write(pathFolderImage + File.separator+ part.getSubmittedFileName());


            //B3. Ket noi CSDL them du lieu vao bang Product va
            product.setProductId(request.getParameter("productId"));
            product.setProductName(request.getParameter("productName"));
            product.setProductDescriptions(request.getParameter("descriptions"));
            product.setCreated(java.time.LocalDate.now());
            product.setPrice(Float.parseFloat(request.getParameter("price")));
            product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
            product.setProductStatus(Boolean.parseBoolean(request.getParameter("status")));
            boolean result = productService.save(product);
            if (result) {
                getAllProduct(request, response);
            }
        } else if (action.equals("Update")) {
            Product product = new Product();
            product.setProductId(request.getParameter("productId"));
            product.setProductName(request.getParameter("productName"));
            product.setProductDescriptions(request.getParameter("descriptions"));
            product.setCreated(java.time.LocalDate.now());
            product.setPrice(Float.parseFloat(request.getParameter("price")));
            product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
            product.setProductStatus(Boolean.parseBoolean(request.getParameter("status")));
            boolean result = productService.update(product);
            if (result) {
                getAllProduct(request, response);
            }
        }
    }

    public void getAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = productService.findAll();
//        Add vào request
        request.setAttribute("listPro", productList);
        request.getRequestDispatcher("views/admin/product.jsp").forward(request, response);
    }

}
