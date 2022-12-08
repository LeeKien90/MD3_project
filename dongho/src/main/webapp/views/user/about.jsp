<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 11/22/2022
  Time: 7:16 PM
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

<!-- about section -->

<section class="about_section layout_padding">
  <div class="container  ">
    <div class="row">
      <div class="col-md-6 col-lg-5 ">
        <div class="img-box">
          <img src="<%=request.getContextPath()%>/views/images/big-bang-sang-bleu-ii-king-gold-white-pave-45-mm-soldier-shot.webp" alt="">
        </div>
      </div>
      <div class="col-md-6 col-lg-7">
        <div class="detail-box">
          <div class="heading_container">
            <h2>
              About Us
            </h2>
          </div>
          <p>
            Nếu là lần đầu tiên biết đến WatchStore hay chưa từng trải nghiệm mua đồng hồ tại cửa hàng chúng tôi, chắc hẳn quý khách hàng đang suy nghĩ và có rất nhiều điều băn khoăn muốn biết thêm về WatchStore.
            Và chúng tôi cam kết rằng những thông tin dưới đây sẽ được cung cấp một cách thật tâm và chân thành nhất!
            <br>
            Dù chỉ mới thành lập năm 2020, trải qua hơn 2 năm không quá dài, nhưng cũng không phải là quá ngắn ngủi,
            WatchStore hiện tại đã vươn mình trở thành một địa chỉ phân phối đồng hồ chính hãng với nhiều sản phẩm phong phú, đa dạng, đi kèm chế độ bảo hành và hậu mãi tốt nhất tại Việt Nam.
            <br>
            Hiện WatchStore đã trở thành đại lý chính hãng ủy quyền cho rất nhiều thương hiệu đồng hồ từ Nhật Bản, Thụy Sỹ,… Nổi bật nhất có thể kể đến như: Citizen, Casio, Orient...
            <br>
            Với tâm huyết và nỗ lực cố gắng từng ngày của đội ngũ nhân sự tại WatchStore, chúng tôi đã đến gần hơn với khách hàng từng ngày, được khách hàng yêu thương và ủng hộ. Do vậy, dù được thành lập vào thời điểm khó khăn nhất – khi đại dịch toàn cầu COVID-19 hoành hành,
            WatchStore vẫn vững vàng vượt quá và phát triển cho đến thời điểm hiện tại.


          </p>
        </div>
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
