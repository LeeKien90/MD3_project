<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/22/2022
  Time: 7:02 PM
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
    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

    <title>WatchStore</title>
    <!-- css cart -->
    <!-- <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="css/style-Cart.css"> -->
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

<!-- about section -->

<section class="about_section layout_padding">
    <h1 class="text-center">Giỏ hàng</h1><br>
    <div class="row">
        <div class="col col-md-12">
            <table class="col col-md-12" style="margin-left: 20px;">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Ảnh đại diện</th>
                    <th>Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Thành tiền</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody id="datarow">
                <tr>
                    <td>1</td>
                    <td>
                        <img src="<%=request.getContextPath()%>/views/images/Big-Bang-Sang-Bleu-II-Titanium-White.png" class="hinhdaidien">
                    </td>
                    <td>Apple Ipad 4 Wifi 16GB</td>
                    <td>
                        <input type="number" class="qty-text" step="1" min="1" max="300" name="quantity" value="1">
                    </td>
                    <td>11,800,000.00</td>
                    <td>23,600,000</td>
                    <td>
                        <!-- Nút xóa, bấm vào sẽ xóa thông tin dựa vào khóa chính `sp_ma` -->
                        <a id="delete_1" data-sp-ma="2" class="btn btn-danger btn-delete-sanpham">
                            <i class="fa fa-trash" aria-hidden="true"></i> Xóa
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>
                        <img src="<%=request.getContextPath()%>/views/images/CLASSIC-FUSION-TITANIUM-BLUE-ON-RUBBER.png" class="hinhdaidien">
                    </td>
                    <td>Nokia Asha 311</td>
                    <td><input type="number" class="qty-text" step="1" min="1" max="300" name="quantity" value="1"></td>
                    <td>2,699,000.00</td>
                    <td>1,0796,000</td>
                    <td>
                        <!-- Nút xóa, bấm vào sẽ xóa thông tin dựa vào khóa chính `sp_ma` -->
                        <a id="delete_2" data-sp-ma="6" class="btn btn-danger btn-delete-sanpham">
                            <i class="fa fa-trash" aria-hidden="true"></i> Xóa
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>
                        <img src="<%=request.getContextPath()%>/views/images/Hublot Big Bang Unico Sang Bleu .png" class="hinhdaidien">
                    </td>
                    <td>Apple iPhone 5 16GB White</td>
                    <td><input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="1"></td>
                    <td>1,4990,000.00</td>
                    <td>119,920,000</td>
                    <td>
                        <!-- Nút xóa, bấm vào sẽ xóa thông tin dựa vào khóa chính `sp_ma` -->
                        <a id="delete_3" data-sp-ma="4" class="btn btn-danger btn-delete-sanpham">
                            <i class="fa fa-trash" aria-hidden="true"></i> Xóa
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="6"><br></td>
                </tr>
                <tr>

                    <th colspan="5">Tổng tiền hàng</th>
                    <td>20000000</td>
                </tr>
                <tr>
                    <td>
                        <a href="index.jsp" class="btn btn-warning btn-md"><i class="fa fa-arrow-left"
                                                                              aria-hidden="true"></i>&nbsp;Quay
                            về trang chủ</a>
                    </td>
                    <td colspan="5" style="text-align:right ;">
                        <a href="checkout.jsp" class="btn btn-primary btn-md "><i
                                class="fa fa-shopping-cart"></i>&nbsp;Thanh toán</a>
                    </td>
                </tr>
                </tbody>

            </table>
          </div>
    </div>
    </div>
</section>

<!-- end about section -->

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
