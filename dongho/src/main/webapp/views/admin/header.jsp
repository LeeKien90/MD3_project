<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/23/2022
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav id="sidebar" class="sidebar js-sidebar">
    <div class="sidebar-content js-simplebar">
        <a class="sidebar-brand" href="index.jsp">
            <span class="align-middle">AdminKit</span>
        </a>

        <ul class="sidebar-nav">
            <li class="sidebar-header">
                Pages
            </li>
            <li class="sidebar-item active">
                <a class="sidebar-link" href="<%=request.getContextPath()%>/views/admin/index.jsp">
                    <i class="align-middle" data-feather="grid"></i> <span class="align-middle">Dashboard</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a class="sidebar-link" href="<%=request.getContextPath()%>/CategoryServlet?action=getAll">
                    <i class="align-middle" data-feather="grid"></i> <span class="align-middle">Category</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a class="sidebar-link" href="<%=request.getContextPath()%>/ProductServlet?action=getAll">
                    <i class="align-middle" data-feather="square"></i> <span class="align-middle">Product</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a class="sidebar-link" href="<%=request.getContextPath()%>/UserServlet?action=getAll">
                    <i class="align-middle" data-feather="user"></i> <span class="align-middle">User</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a class="sidebar-link" href="<%=request.getContextPath()%>/HomeServlet?action=Home">
                    <i class="align-middle" data-feather="user"></i> <span class="align-middle">User Page</span>
                </a>
            </li>

        </ul>
    </div>
</nav>
