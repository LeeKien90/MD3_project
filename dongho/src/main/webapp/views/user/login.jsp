<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/22/2022
  Time: 5:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WatchStore</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
          integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/login.css">

</head>

<body>
<div class="login-box">
    <h2>Đăng Nhập</h2>
    <form action="<%=request.getContextPath()%>/UserServlet" method="post">
        <div class="user-box">
            <input type="text" name="userName">
            <label>Username</label>
        </div>
        <div class="user-box">
            <input type="password" name="password">
            <label>Password</label>
        </div>

        <a href="#">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <input type="submit" name="action" value="LOGIN" class="btn btn-dark"/>
        </a>

        <a style="margin-left: 60px ;" href="#">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <input type="submit" name="action" value="BACK" class="btn btn-dark"/>
        </a>
    </form>
</div>


</body>
</html>
