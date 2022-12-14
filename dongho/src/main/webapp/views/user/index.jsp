<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/22/2022
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Basic -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- Site Metas -->
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/views/images/favicon.png" type="image/x-icon">

    <title>WatchStore</title>


    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/views/css/bootstrap.css"/>
    <!--owl slider stylesheet -->
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"/>

    <!-- font awesome style -->
    <link href="<%=request.getContextPath()%>/views/css/font-awesome.min.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/views/css/style.css" rel="stylesheet"/>
    <!-- responsive style -->
    <link href="<%=request.getContextPath()%>/views/css/responsive.css" rel="stylesheet"/>

</head>

<body>

<div class="hero_area">
    <div class="hero_social">
        <a href="">
            <i class="fa fa-facebook" aria-hidden="true"></i>
        </a>
        <a href="">
            <i class="fa fa-twitter" aria-hidden="true"></i>
        </a>
        <a href="">
            <i class="fa fa-linkedin" aria-hidden="true"></i>
        </a>
        <a href="">
            <i class="fa fa-instagram" aria-hidden="true"></i>
        </a>
    </div>
    <!-- header section strats -->
    <jsp:include page="header.jsp"/>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
        <div id="customCarousel1" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container-fluid ">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="detail-box">
                                    <h1>
                                        ?????ng h??? Casio
                                    </h1>
                                    <p>
                                        Casio ???????c xem l?? th????ng hi???u ?????ng h??? g???n g??i v???i nhi???u ?????i t?????ng ng?????i d??ng nh???
                                        v??o s??? ??a d???ng v??? m???u m??, gi?? c??? s???n ph???m.
                                    </p>
                                    <div class="btn-box">
                                        <a href="<%=request.getContextPath()%>/HomeServlet?action=product&&catId=1"
                                           class="btn1">
                                            Mua ngay
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-2"></div>
                            <div class="col-md-6 col-xl-4">
                                <div class="img-box">
                                    <img src="<%=request.getContextPath()%>/views/images/amazon-com-g-shock.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item ">
                    <div class="container-fluid ">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="detail-box">
                                    <h1>
                                        ?????ng h??? Citizen
                                    </h1>
                                    <p>
                                        ?????ng h??? Citizen ???????c ????nh gi?? cao v??? t??nh th???m m??? nh??? ki???u thi???t k??? tinh t???, c??
                                        s??? k???t h???p h??i h??a gi???a m???t ?????ng h??? v?? ph???n d??y ??eo. S???n ph???m ??a d???ng ????? ????p ???ng
                                        nhu c???u l???a ch???n cho c??? n??? gi???i l???n nam gi???i.
                                    </p>
                                    <div class="btn-box">
                                        <a href="<%=request.getContextPath()%>/HomeServlet?action=product&&catId=2"
                                           class="btn1">
                                            Mua ngay
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-2"></div>
                            <div class="col-md-6 col-xl-4">
                                <div class="img-box">
                                    <img src="<%=request.getContextPath()%>/views/images/citizen.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item ">
                    <div class="container-fluid ">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="detail-box">
                                    <h1>
                                        ?????ng h??? Orient
                                    </h1>
                                    <p>
                                        ?????ng h??? Orient th?????ng s??? d???ng ch???t li???u d??y da v?? kim lo???i ???????c ch??? t??c t??? m???
                                        t??n l??n v??? sang tr???ng, k???t h???p c??ng m???t k??nh kho??ng v?? k??nh Sapphire t???o ????? ch???c
                                        ch???n c???a s???n ph???m c??ng nh?? c?? ph???n m??y c?? t??? ?????ng b???n b???.
                                    </p>
                                    <div class="btn-box">
                                        <a href="<%=request.getContextPath()%>/HomeServlet?action=product&&catId=9"
                                           class="btn1">
                                            Mua ngay
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-2"></div>
                            <div class="col-md-6 col-xl-4">
                                <div class="img-box">
                                    <img src="<%=request.getContextPath()%>/views/images/Orient.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ol class="carousel-indicators">
                <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
                <li data-target="#customCarousel1" data-slide-to="1"></li>
                <li data-target="#customCarousel1" data-slide-to="2"></li>
            </ol>
        </div>

    </section>
    <!-- end slider section -->
</div>

<!-- shop section -->

<!-- client section -->
<section class="client_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">
            <h2>
                S???n ph???m
            </h2>
        </div>

        <div class="row">
            <c:forEach items="${listProduct}" var="pro">
                <div class="col-sm-6 col-xl-3">
                    <div class="box">
                        <a href="<%=request.getContextPath()%>/HomeServlet?action=Detail&&productId=${pro.productId}">
                            <div class="img-box">
                                <img src="<%=request.getContextPath()%>/views/images/${pro.productImage}" alt="">
                            </div>
                            <div style="color: white" class="detail-box">
                                <h6>
                                    ${pro.productName}
                                </h6>
                                <h6>
                                    Price: ${pro.price}
                                </h6>
                            </div>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

</section>
<!-- end client section -->

<!-- end shop section -->

<!-- about section -->

<section class="about_section layout_padding">
    <div class="container  ">
        <div class="row">
            <div class="col-md-6 col-lg-5 ">
                <div class="img-box">
                    <img src="<%=request.getContextPath()%>/views/images/big-bang-sang-bleu-ii-king-gold-white-pave-45-mm-soldier-shot.webp"
                         alt="">
                </div>
            </div>
            <div class="col-md-6 col-lg-7">
                <div class="detail-box">
                    <div class="heading_container">
                        <h2>
                            Gi???i thi???u
                        </h2>
                    </div>
                    <p>
                        N???u l?? l???n ?????u ti??n bi???t ?????n WatchStore hay ch??a t???ng tr???i nghi???m mua ?????ng h??? t???i c???a h??ng ch??ng
                        t??i, ch???c h???n qu?? kh??ch h??ng ??ang suy ngh?? v?? c?? r???t nhi???u ??i???u b??n kho??n mu???n bi???t th??m v???
                        WatchStore.
                        V?? ch??ng t??i cam k???t r???ng nh???ng th??ng tin d?????i ????y s??? ???????c cung c???p m???t c??ch th???t t??m v?? ch??n
                        th??nh nh???t!
                    </p>
                    <a href="<%=request.getContextPath()%>/views/user/about.jsp">
                        ?????c ti???p ->
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end about section -->

<!-- contact section -->

<section class="contact_section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="form_container">
                    <div class="heading_container">
                        <h2>
                            Contact Us
                        </h2>
                    </div>
                    <form action="">
                        <div>
                            <input type="text" placeholder="Full Name "/>
                        </div>
                        <div>
                            <input type="email" placeholder="Email"/>
                        </div>
                        <div>
                            <input type="text" placeholder="Phone number"/>
                        </div>
                        <div>
                            <input type="text" class="message-box" placeholder="Message"/>
                        </div>
                        <div class="d-flex ">
                            <button>
                                SEND
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div class="img-box">
                    <img src="<%=request.getContextPath()%>/views/images/anh1.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end contact section -->

<!-- footer section -->
<jsp:include page="footer.jsp"/>
<!-- footer section -->

<!-- jQery -->
<script src="<%=request.getContextPath()%>/views/js/jquery-3.4.1.min.js"></script>
<!-- popper js -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
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