<%@ page import="ra.controller.CategoryServlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/22/2022
  Time: 7:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/views/images/favicon.png" type="image/x-icon">

    <title>WatchStore</title>


    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/views/css/bootstrap.css" />
    <!--owl slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

    <!-- font awesome style -->
    <link href="<%=request.getContextPath()%>/views/css/font-awesome.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/views/css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="<%=request.getContextPath()%>/views/css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">

<div class="hero_area">

    <!-- header section strats -->
    <jsp:include page="header.jsp"/>
  <!-- end header section -->
</div>

<!-- shop section -->
<section>
        <div class="row">
            <c:forEach items="${listCategory}" var="cat">
            <div style="text-align: center; text-transform: uppercase; margin-top: 20px;padding: 10px; background-color: #3b4a6b;" class="col-md-2 col-lg-4">
                        <a style="color: white" href="<%=request.getContextPath()%>/HomeServlet?action=product&&catId=${cat.catalogId}">${cat.catalogName}</a>
            </div>
    </c:forEach>
        </div>
</section>


<section class="shop_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">
            <h2>
                Sản phẩm
            </h2>
        </div>
        <div class="row">
            <c:forEach items="${listProduct}" var="pro">
                <div class="col-sm-6 col-xl-6">
                    <div class="box">
                        <a href="<%=request.getContextPath()%>/HomeServlet?action=Detail&&productId=${pro.productId}">
                            <div class="img-box">
                                <img src="<%=request.getContextPath()%>/views/images/${pro.productImage}" alt="">
                            </div>
                            <div class="detail-box">
                                <h6>
                                        ${pro.productName}
                                </h6>
                                <h6>
                                    Price:
                                    <span>
                  $${pro.price}
                  </span>
                                </h6>
                            </div>
                            <div class="new">
                                <span>
                                     New
                                </span>
                            </div>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<!-- end shop section -->

<!-- footer section -->
<jsp:include page="footer.jsp"/>
<!-- footer section -->

<!-- jQery -->
<script src="<%=request.getContextPath()%>/views/js/jquery-3.4.1.min.js"></script>
<!-- popper js -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
</script>
<!-- bootstrap js -->
<script src="<%=request.getContextPath()%>/views/js/bootstrap.js"></script>
<!-- owl slider -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
</script>
<!-- custom js -->
<script src="<%=request.getContextPath()%>/views/js/custom.js"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
<!-- End Google Map -->


</body>

</html>
