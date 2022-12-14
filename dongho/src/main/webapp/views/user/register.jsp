<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/22/2022
  Time: 5:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title> SignUp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
          integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Custom Theme files -->
    <link href="<%=request.getContextPath()%>/views/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">

    <!-- //web font -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/register.css">


</head>
<body>
<!-- main -->

<div class="main-w3layouts wrapper">
    <h1>Đăng ký</h1>
    <form action="<%=request.getContextPath()%>/UserServlet" method="post">
    <div class="main-agileinfo">
        <div class="agileits-top">

                <input class="text1" id="name" type="text" name="name" placeholder="Name" required="">
                <input class="text" id="username" type="text" name="Username" placeholder="Username" required="">
                <input class="text email" id="email" type="email" name="email" placeholder="Email" required="">
                <input class="text" id="password" type="password" name="password" placeholder="Password" required="">
                <input class="text w3lpass" id="confirm_password" type="password" name="password" placeholder="Confirm Password" required="">
                <div class="wthree-text">
                    <label class="anim">
                        <input type="checkbox" class="checkbox" required="">
                        <span>I Agree To The Terms & Conditions</span>
                    </label>
                    <div class="clear"> </div>
                </div>
                <input onclick="register()" name="action" type="submit" value="REGISTER">

            <p>Don't have an Account? <a href="login.jsp"> Login Now!</a></p>
        </div>
    </div>

    <ul class="colorlib-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
    </form>
</div>

<!-- //main -->
<script>

    const name = document.getElementById('name');
    const username = document.getElementById('username');
    const email = document.getElementById('email');
    const password = document.getElementById('password');
    const confirmPassword = document.getElementById('confirm_password');
    //   let listUsers;
    //    let id;
    // function register() {
    //
    //     if (listUsers === null) {
    //         listUsers = []
    //         id = 1;
    //     } else {
    //         listUsers = JSON.parse(window.localStorage.getItem('list_user'));
    //         id = listUsers[listUsers.length].id + 1;
    //
    //     }
    //     let user = new Users(id,name,username,email,password);
    //     listUsers.push(user);
    //     window.localStorage.setItem('list_user', JSON.stringify(listUsers));
    // }
    //lấy dữ liệu User
    if (!getFromStorage('list_user')){
        //gắn dữ liệu
        saveToStorage('list_user',[])
    }


    const listUsers = getFromStorage("list_user");
    const user = {
        name: name.value,
        username: username.value,
        email: email.value,
        password: password.value
    }

    // Hàm lưu dữ liệu
    function saveToStorage(key, value) {
        localStorage.setItem(key, JSON.stringify(value));
    }

    // Hàm lấy dữ liệu
    function getFromStorage(key) {
        return JSON.parse(localStorage.getItem(key));
    }
    function register() {

        listUsers.push(user);
    }

</script>
</body>
</html>
