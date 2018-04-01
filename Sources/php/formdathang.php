<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Form-dat-hang</title>
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style2.css">
</head>
<body>
	<div id="wrap">
		<header class="clear">
			<div class="container">
				<img class="img-res" src="img/image-1.png" alt="">
			</div>
		</header>
		<nav>
			<div class="container">
				<ul class="main-menu clear">
					<li><a href="index.php">TRANG CHỦ</a></li>
					<li><a href="#">GIỚI THIỆU</a></li>
					<li><a href="#">GÓC KĨ THUẬT</a></li>
					<li><a href="#">TIN TỨC</a></li>
					<li><a href="#">LIÊN HỆ</a></li>
				</ul>
				<div class="search navbar-right">
					<form action="" method="POST" class="form-inline" role="form">
						<div class="form-group">
							<label class="sr-only" for="">label</label>
							<input type="email" class="form-control" id="" placeholder="Tìm kiếm...">
						</div>
						<button type="submit" class="btn btn-primary">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</form>	
				</div>
			</div>
		</nav>
		<main>
			<div class="container">
				<aside>
					<div class="wrap-content">
						<div class="title">
							<h3>Giỏ hàng</h3>
						</div>
						<div class="giohang">
							<form action="">
								<div class="form-group clear">
									<label class="label-control" for="">&nbsp</label>
									<div class="control">
										<input class="form-control" type="number" name="giohang" placeholder="sản phẩm">
									</div>
								</div>
							</form>
						</div>

						<div class="title">
							<h3>
								Danh mục sản phẩm
							</h3>
						</div>

						<div class="widget-content">
							<ul class="menu-sidebar clear">
								<li><a href="#">SAMSUNG</a>
									<ul class="sub-menu">
										<li><a href="#">SAMSUNG J7 PRO</a></li>
										<li><a href="#">SAMSUNG J7 PRIME</a></li>
										<li><a href="#">SAMSUNG S8</a></li>
										<li><a href="#">SAMSUNG S8 PLUS</a></li>
										<li><a href="#">SAMSUNG NOTE FE</a></li>
										<li><a href="#">SAMSUNG NOTE 8</a></li>
									</ul>
								</li>
								<li><a href="#">IPHONE</a>
									<ul class="sub-menu">
										<li><a href="#">IPHONE X</a></li>
										<li><a href="#">IPHONE 8</a></li>
										<li><a href="#">IPHONE 8 PLUS</a></li>
										<li><a href="#">IPHONE 7</a></li>
										<li><a href="#">IPHONE 7 PLUS</a></li>
										<li><a href="#">IPHONE 6S PIUS</a></li>
									</ul>
								</li>
								<li><a href="#">LINH PHỤ KIỆN</a>
									<ul class="sub-menu">
										<li><a href="#">MÀN HÌNH SAMSUNG</a></li>
									</ul>
								</li>
								<li><a href="#">SỬA CHỮA</a></li>
								<li><a href="#">HÀNG KHUYẾN MÃI</a>
									<ul class="sub-menu">
										<li><a href="#">LAPTOP DELL</a></li>
										<li><a href="#">LAPTOP HP</a></li>
										<li><a href="#">BALO LAPTOP</a></li>
										<li><a href="#">TÚI CHỐNG SỐC LAPTOP</a></li>
									</ul>
								</li>
								<li><a href="#">TIN CÔNG NGHỆ</a></li>
								<li><a href="#">KHO MÁY TÍNH</a></li>
							</ul>
						</div>

						<div class="title">
							<h3>Hỗ trợ trực tuyến</h3>
						</div>

						<div class="widget-content">
							<ul class="menu-sidebar">
								<li>Hotline:0939 686 111</li>
								<li>SAMSUNG MINHSIEU</li>
							</ul>
						</div>



						<div class="title">
							<h3>Liên kết webside</h3>
						</div>

						<div class="lienket">
							<form action="">
								<div class="form-group clear">
									<label class="label-control" for="">&nbsp</label>
									<div class="control">
										<select class="form-control" name="" id="">
											<option value="">---Chọn liên kết---</option>
											<option value="1">Thiết bị tưới</option>
											<option value="2">Báo tuổi trẻ</option>
											<option value="3">Báo thanh niên</option>
											<option value="4">Báo công nghệ</option>
											<option value="5">Báo bóng đá</option>
										</select>
									</div>
								</div>
							</form>
						</div>

						<div class="ads">
							<a href="">
								<img class="img-res" src="img/img-2.jpg" alt="">
							</a>
						</div>
						<div class="ads">
							<a href="">
								<img class="img-res" src="img/img-3.jpg" alt="">
							</a>
						</div>
					</div>
				</aside>
				<section>
					<div class="wrap-content">

					<div class="div1">

						<div class="title1">
							<h3>Thông tin người đặt hàng</h3>
						</div>
						<form  action="" name="fRegister" onsubmit="return register()">
							<div class="group clear" >
								<label class="label-control" for="username">Họ tên:</label>
								<div class="control ">
									<input class="form-control" type="text" name="username" >
								</div>
							</div>

								<div class="group clear">
									<label class="label-control" for="address">Địa chỉ:</label>
									<div class="control">
										<input class="form-control" type="text" name="address" >
									</div>
								</div>

								<div class="group clear">
									<label class="label-control" for="email">Email:</label>
									<div class="control">
										<input class="form-control" type="email" name="email" >
									</div>
								</div>

								<div class="group clear">
									<label class="label-control" for="phone">Số điện thoại:</label>
									<div class="control">
										<input class="form-control" type="number" name="phone" >
									</div>
								</div>

								<div class="group clear">
									<label class="label-control" for="note">Ghi chú:</label>
									<div class="control">
										<textarea class="form-control" name="note" id="note"  rows="3"></textarea>
									</div>
								</div>

								<div class="group clear">
									<label class="label-control" for="">&nbsp</label>
									<div class="control">
										<button class="btn1" type="submit">Gửi đơn hàng</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</section>
			</div>
			<div id="gotop">
			    <a href="#">
			    	<img onclick="topFunction()"  id="myBtn" title="gototop" src="img/gotop.png" alt="">
			    </a>
		    </div>
		</main>
		<footer>
			
				<p>Địa chỉ:16 Nguyễn Khánh Toàn, TP Hà Nội</p>
				<p>Tell:0984435480</p>
				<p>Email:samsungminhsieu@gmail.com</p>
				<i class="fa fa-angle-left"></i>
		</footer>
		

	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/app1.js"></script>
</body>
</html>