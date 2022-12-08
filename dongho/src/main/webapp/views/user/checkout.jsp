<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/22/2022
  Time: 7:13 PM
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/cssnew.css">

</head>

<body class="sub_page">

<div class="hero_area">

    <!-- header section strats -->
<jsp:include page="header.jsp"/>
    <!-- end header section -->
</div>

<!-- contact section -->

<section class="contact_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="heading_container">
                <table>
                    <tr>
                        <th class="checkout">
                            <h2>
                                Check Out
                            </h2>
                        </th>
                        <th class="cart-total">

                        </th>
                    </tr>


                </table>


            </div>
            <div class="col-md-6">
                <div class="form_container">
                    <form action="" class="rounded border border-secondary p-2 mb-5">
                        <div>
                            <input type="text" placeholder="Full Name " />
                        </div>
                        <div>
                            <input type="email" placeholder="Email" />
                        </div>
                        <div>
                            <input type="text" placeholder="Phone number" />
                        </div>
                        <div>
                            <input type="text" placeholder="Address" />
                        </div>
                        <div>
                            <input type="text" placeholder="Zip Code" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="img-box">
                    <h2 style="font-weight:bold; margin: 40px;">
                        Cart Total
                    </h2>
                    <form action="" class="rounded border border-secondary p-2 mb-5">
                        <table>
                            <tr>
                                <th>
                                    Subtotal:
                                </th>
                                <td>
                                    $140.00
                                </td>
                            </tr>
                            <tr>
                                <th>Delivery:</th>
                                <td>Free</td>
                            </tr>
                            <tr>
                                <th>Total:</th>
                                <td>$140.00</td>
                            </tr>
                            <tr>
                                <th><div class="payment-method">
                                    <!-- Cash on delivery -->
                                    <div class="custom-control custom-checkbox mr-sm-2">
                                        <input type="checkbox" class="custom-control-input" id="cod" checked>
                                        <label class="custom-control-label" for="cod">Cash on Delivery</label>
                                    </div>
                                </div>
                                </th>
                            </tr>
                            <tr>
                                <th> <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="cod1" checked>
                                    <label class="custom-control-label" for="cod1">Paypal</label>
                                </div>
                                <td><img class="ml-15" src="<%=request.getContextPath()%>/views/images/paypal.png" alt=""></td>
                            </tr>
                            <tr>
                                <th colspan="3" class="cart-btn mt-100">
                                    <div>
                                        <a href="#" class="btn amado-btn w-100">Checkout</a>
                                    </div>
                                </th>
                            </tr>
                        </table>
                    </form>
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
