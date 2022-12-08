<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/22/2022
  Time: 7:24 PM
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

<!-- contact section -->

<section class="contact_section layout_padding">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="form_container">
          <div class="heading_container">
            <h2>
              Contact Us
            </h2>
          </div>
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
              <input type="text" class="message-box" placeholder="Message" />
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
          <img src="<%=request.getContextPath()%>/views/images/contact-img.jpg" alt="">
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
