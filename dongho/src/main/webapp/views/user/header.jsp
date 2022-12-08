<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/22/2022
  Time: 4:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header_section">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
            <a class="navbar-brand" href="<%=request.getContextPath()%>/views/user/index.jsp">
                <span> WatchStore </span>
            </a>

            <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
            >
                <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=request.getContextPath()%>/HomeServlet?action=Home">
                            Trang Chủ
                        </a>
                    </li>
                    <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/HomeServlet?action=Shop">
                                <p class="nav-link"> Sản phẩm </p>
                            </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%=request.getContextPath()%>/views/user/about.jsp"> Giới thiệu </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%=request.getContextPath()%>/views/user/contact.jsp">Liên hệ</a>
                    </li>
                </ul>
                <div class="user_option-box">
                    <input
                            type="search"
                            class="form-control rounded"
                            placeholder="Search"
                            aria-label="Search"
                            aria-describedby="search-addon"
                    />
                    <i class="fa fa-search" aria-hidden="true"></i>
                    <div class="dropdown">
                        <a
                                href="<%=request.getContextPath()%>HomeServlet?action=search"
                                class="dropdownMenuButton"
                                data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                        >
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </a>
                        <div
                                class="dropdown-menu"
                                aria-labelledby="dropdownMenuButton">

                            <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/login.jsp">Login</a>
                            <a class="dropdown-item" href="<%=request.getContextPath()%>/views/user/register.jsp">Register</a>
                        </div>
                    </div>
                    <div>
                        <a href="<%=request.getContextPath()%>/views/user/cart.jsp">
                            <i class="fa fa-cart-plus" aria-hidden="true"></i>
                        </a>
                    </div>
                    <div>
                        <a href="<%=request.getContextPath()%>/views/user/wishlist.jsp">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>
