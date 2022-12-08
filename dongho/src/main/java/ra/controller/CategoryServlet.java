package ra.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import ra.model.entity.Category;
import ra.model.service.ICategoryService;
import ra.model.serviceImp.CategoryServiceImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.Writer;
import java.util.List;

@WebServlet(name = "CategoryServlet", value = "/CategoryServlet")
public class CategoryServlet extends HttpServlet {
    private static final Gson GSON = new GsonBuilder().create();
    private static ICategoryService<Category,Integer> categoryService = new CategoryServiceImp();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action.equals("getAll")){
            getAllCategory(request,response);
        }else if (action.equals("getById")) {
            int catalogId = Integer.parseInt(request.getParameter("catalogId"));
            Category catUpdate = categoryService.findById(catalogId);
            String json = GSON.toJson(catUpdate);
            response.setStatus(200);
            response.setHeader("Content-Type", "application/json");
            response.setCharacterEncoding("UTF-8");
            Writer out = response.getWriter();
            out.write(json);
            out.flush();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action.equals("Create")) {
            Category category = new Category();
            category.setCatalogName(request.getParameter("catalogName"));
            category.setDescriptions(request.getParameter("descriptions"));
            category.setCatalogStatus(Boolean.parseBoolean(request.getParameter("status")));
            boolean result = categoryService.save(category);
            if (result){
                getAllCategory(request,response);
            }
        }else if (action.equals("Delete")){
            int catalogId = Integer.parseInt(request.getParameter("catDeleteId"));
            boolean result = categoryService.delete(catalogId);
            if (result){
                getAllCategory(request,response);
            }
        } else if (action.equals("Update")) {
            Category cat = new Category();
            cat.setCatalogId(Integer.parseInt(request.getParameter("catalogId")));
            cat.setCatalogName(request.getParameter("catalogName"));
            cat.setDescriptions(request.getParameter("descriptions"));
            cat.setCatalogStatus(Boolean.parseBoolean(request.getParameter("updateStatus")));
            boolean result = categoryService.update(cat);
            if (result){
                getAllCategory(request,response);
            }
        }else if (action.equals("Search")){
            String catalogName = request.getParameter("searchName");
            request.setAttribute("listCat", categoryService.searchByName(catalogName));
            request.getRequestDispatcher("views/admin/category.jsp").forward(request,response);
        }else {
            request.getRequestDispatcher("views/admin/error.jsp").forward(request,response);
        }

    }

    public void getAllCategory(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<Category> listCategory = categoryService.findAll();

//        Add vào request
        request.setAttribute("listCategory",listCategory);
        request.getRequestDispatcher("views/admin/category.jsp").forward(request,response);
    }

}
