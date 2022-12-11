<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!doctype html>
<html lang="en">

<head>
  <title>HomePage</title>
  
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   
  <link rel="stylesheet" href="assets/user/css/index.css">
  
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
  <!-- owlCousel -->
  <link rel="stylesheet" href="assets/lib/owl.carousel.min.css">
  <link rel="stylesheet" href="assets/lib/owl.theme.default.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="./css/index.css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <!-- owlCousel -->
  <link rel="stylesheet" href="./lib/owlCarousel/dist/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="./lib/owlCarousel/dist/assets/owl.theme.default.min.css">

  <!-- slick -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css"
    integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A=="
    crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css"
    integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
    crossorigin="anonymous" />
</head>

<body>
  <%@ include file="layout/user/header.jsp" %>
  <!-- Cover -->
	<section class="myCover">
		<div class="cover__content">
			<div class="row tool-search">
				<form action="seachTrip" method="post" style="display: flex;">

					<select name="departure" class="form-select col-3 custom_flex"
						aria-label="Default select example" required>
						<option selected>Chọn nơi xuất phát</option>
						
						<c:forEach items="${ list_departure }" var="place" varStatus="loop">
                			<option value="${place}">${place}</option>
            			</c:forEach>

					</select> <select name="destination" class="col-3 form-select custom_flex"
						aria-label="Default select example" required>
						<option selected>Chọn điểm đến</option>

						<c:forEach items="${ list_destination }" var="place" varStatus="loop">
                			<option value="${place}">${place}</option>
            			</c:forEach>

					</select>
					<div class="col-3 custom_flex">
						<input name="departure_time" class="form-control" type="date"
							required>
					</div>
					<div class="col-3">
						<button class="btn btn-danger">Tìm chuyến</button>
					</div>
				</form>
			</div>
	</section>

	<!-- Intro -->
	<section id="myIntro">
		<div class="myIntro__content container">
			<div class="row">
				<div class="col-4 myIntro__item d-flex">
					<img class="mr-4" src="assets/user/images/bus-car-icon.svg">
					<div class="Intro__text">
						<h3>2000+ nhà xe chất lượng cao</h3>
						<p>5000+ tuyến đường trên toàn quốc, chủ động và đa dạng lựa
							chọn.</p>
					</div>
				</div>
				<div class="col-4 myIntro__item d-flex">
					<img class="mr-4" src="assets/user/images/yellow-ticket-icon.svg">
					<div class="Intro__text">
						<h3>Đặt vé dễ dàng</h3>
						<p>Đặt vé chỉ với 60s. Chọn xe yêu thích cực nhanh và thuận
							tiện.</p>
					</div>
				</div>
				<div class="col-4 myIntro__item d-flex">
					<img class="mr-4" src="assets/user/images/completement-icon.svg">
					<div class="Intro__text">
						<h3>Đảm bảo có vé</h3>
						<p>Hoàn ngay 150% nếu không có vé, mang đến hành trình trọn
							vẹn.</p>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Intro2 -->
	<section class="Intro2">
		<div class="Intro2__content d-grid">
			<div class="item">
				<div class="content">
					<img src="assets/user/images/__banner-home_641x500-(1).png">
				</div>
			</div>

			<div class="item">
				<div class="content">
					<img src="assets/user/images/remove_banner-home_641x500.png">
				</div>
			</div>

			<div class="item">
				<div class="content">
					<img src="assets/user/images/newusers_banner-home_641x500.png">
				</div>
			</div>

		</div>
	</section>

	<!-- Students -->
	<section class="Students">
		<div class="Students__content">
			<h2 class="mt-3">Bến xe khách</h2>
			<div class="myStudent owl-carousel owl-theme">
				<div class="item">
					<div class="card" style="width: 220px">
						<img class="card-img-top"
							src="assets/user/images/bx-mien-dong.jpg" alt="Card image"
							style="width: 100%">
						<div iv class="card-body">
							<h4 class="card-text">Bến xe Miền Đông</h4>
							<div class="icon">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <span>4.4</span> <span>(39,470)</span>
							</div>
						</div>
					</div>
				

				</div>

				<div class="item">
					<div class="card" style="width: 220px">
						<img class="card-img-top" src="assets/user/images/bx-gia-lam.jpg"
							alt="Card image" style="width: 100%">
						<div iv class="card-body">
							<h4 class="card-text">Bến xe Gia Lâm</h4>
							<div class="icon">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <span>4.4</span> <span>(39,470)</span>
							</div>
						</div>
					</div>
					

				</div>


				<div class="item">
					<div class="card" style="width: 220px">
						<img class="card-img-top" src="assets/user/images/bx-my-dinh.jpg"
							alt="Card image" style="width: 100%">
						<div iv class="card-body">
							<h4 class="card-text">Bến xe Mỹ Đình</h4>
							<div class="icon">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <span>4.4</span> <span>(39,470)</span>
							</div>
						</div>
					</div>
				
				</div>

				<div class="item">
					<div class="card" style="width: 220px">
						<img class="card-img-top"
							src="assets/user/images/bx-nuoc-ngam.jpg" alt="Card image"
							style="width: 100%">
						<div iv class="card-body">
							<h4 class="card-text">Bến xe Nước Ngầm</h4>
							<div class="icon">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <span>4.4</span> <span>(39,470)</span>
							</div>
						</div>
					</div>
					

				</div>

				<div class="item">
					<div class="card" style="width: 220px">
						<img class="card-img-top"
							src="assets/user/images/ben-xe-da-nang-vntrip.jpg"
							alt="Card image" style="width: 100%">
						<div iv class="card-body">
							<h4 class="card-text">Bến xe Đà Nẵng</h4>
							<div class="icon">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <span>4.4</span> <span>(39,470)</span>
							</div>
						</div>
					</div>
					

				</div>


				<div class="item">
					<div class="card" style="width: 220px">
						<img class="card-img-top"
							src="assets/user/images/ben-xe-dat-lat.jpg" alt="Card image"
							style="width: 100%">
						<div iv class="card-body">
							<h4 class="card-text">Bến xe Đà Lạt</h4>
							<div class="icon">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <span>4.4</span> <span>(39,470)</span>
							</div>
						</div>

				</div> -->
			</div>
		</div>
	</section>



	<%--   <%@ include file="layout/user/footer.jsp" %> --%>
  <jsp:include page="layout/user/footer.jsp" />
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
  <!-- owlCousel -->
  <script src="assets/lib/owl.carousel.min.js"></script>


  <script>
			$(document).ready(function() {
				$('.owl-carousel:not(".myStudent")').owlCarousel({
					loop : true,
					margin : 10,
					nav : true,
					autoWidth : true,
					slideBy : 4,
					dots : false,
					stagePadding : 0,
					mouseDrag : false,
					responsive : {
						0 : {
							items : 4
						},
						1000 : {
							items : 4
						}
					}
				});
			});
			$(document).ready(function() {

				$('.myStudent').owlCarousel({
					loop : true,
					margin : 10,
					nav : true,
					autoWidth : true,
					slideBy : 6,
					dots : false,
					stagePadding : 0,
					mouseDrag : false,
					responsive : {
						0 : {
							items : 1
						},
						600 : {
							items : 3
						},
						1199 : {
							items : 4
						},

						1439 : {
							items : 5
						}
					}
				})
			})
		</script>
  <!-- slick -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"
    integrity="sha512-HGOnQO9+SP1V92SrtZfjqxxtLmVzqZpjFFekvzZVWoiASSQgSr4cw9Kqd2+l8Llp4Gm0G8GIFJ4ddwZilcdb8A=="
    crossorigin="anonymous"></script>
  <script>
    $('.myClass').slick({
      infinite: true,
      slidesToShow: 3,
      touchMove: false,
      adaptiveHeight: true,
      slidesToScroll: 3,
      VariWidth: true,

      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 3,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 576,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]

    });
  </script>
</body>

</html>