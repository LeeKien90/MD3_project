package ra.controller;

import ra.model.entity.User;
import ra.model.service.IUserService;
import ra.model.serviceImp.UserServiceImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    private static IUserService<User,Integer> userService = new UserServiceImp();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action.equals("getAll")) {
            getAllUser(request, response);
        } else if (action.equals("Unlock")) {
            int userId = Integer.parseInt(request.getParameter("userId"));
            boolean result = userService.unblock((userId));
            if (result) {
                getAllUser(request, response);
            }
        }else if (action.equals("Block")){
            int userId = Integer.parseInt(request.getParameter("userId"));
            boolean result = userService.block((userId));
            if (result) {
                getAllUser(request, response);
            } else {
                request.getRequestDispatcher("views/admin/error.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("register")){
            String name = request.getParameter("name");
            String userName = request.getParameter("Username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            User user = new User();
            user.setUserName(userName);
            user.setUserPassword(password);
            user.setFullName(name);
            user.setEmail(email);
            boolean result = userService.register(user);
            if (result){
                request.getRequestDispatcher("views/user/login.jsp").forward(request, response);
            }
        }else if (action.equalsIgnoreCase("login")){
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            User user = userService.login(userName,password);
            if (user!=null){
                HttpSession session = request.getSession();
                session.setAttribute("userLogin",user);
                if (user.getPermissions()){
                    request.getRequestDispatcher("views/admin/index.jsp").forward(request, response);
                }else {
                    request.getRequestDispatcher("views/user/index.jsp").forward(request, response);
                }
            }else {
                request.getRequestDispatcher("views/user/login.jsp").forward(request, response);
            }
        }else if (action.equalsIgnoreCase("back")){
            request.getRequestDispatcher("views/user/index.jsp").forward(request, response);
        }
    }

    public void getAllUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = userService.findAll();
//        Add vào request
        request.setAttribute("listUser", userList);
        request.getRequestDispatcher("views/admin/user.jsp").forward(request, response);
    }
}
