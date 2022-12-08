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
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/HomeServlet")
public class HomeServlet extends HttpServlet {
    private static IProductService<Product, String> productService = new ProductServiceImp();
    private static ICategoryService<Category, Integer> categoryService = new CategoryServiceImp();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("Home")){
            List<Product> listProduct = productService.findAll();
            request.setAttribute("listProduct",listProduct);
            request.getRequestDispatcher("views/user/index.jsp").forward(request,response);
        } else if (action.equals("Shop")) {
            request.setAttribute("listCategory",categoryService.findAll());
            request.setAttribute("listProduct",productService.findAll());
            request.getRequestDispatcher("views/user/shop.jsp").forward(request,response);
        } else if (action.equals("Detail")) {
            String productId = request.getParameter("productId");
            Product productDetail = productService.findById(productId);
            request.setAttribute("productDetail", productDetail);
            request.getRequestDispatcher("views/user/Detail.jsp").forward(request, response);
        }else if (action.equals("product")) {
            int catId = Integer.parseInt(request.getParameter("catId"));
            List<Product> listPro = productService.getProductByCategoryId(String.valueOf(catId));
            request.setAttribute("listProduct",listPro);
            request.setAttribute("listCatalog",categoryService.findAll());
            request.setAttribute("catId",catId);
            request.getRequestDispatcher("views/user/shop.jsp").forward(request,response);
        }else if (action.equals("Search")) {
            String name  = request.getParameter("search");
            List<Product> listPro = productService.seachProductByName(name);
            request.setAttribute("listProduct",listPro);
            request.getRequestDispatcher("views/user/index.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
