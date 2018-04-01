<?php
	require "config1.php";

	$db = new Database();

	$menus = $db->getMenu();

	$loaisanphams = $db->getloaisanpham(0);

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Cửa hàng bán điện thoại</title>
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div id="wrap">
		<header class="clear">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<img class="img-res" src="img/image-1.png" alt="">
					</div>
				</div>
			</div>
		</header>
		<nav>
			<div class="container">
				<ul class="main-menu clear">

					<?php
					//var_dump($menus);
					foreach ($menus as $menu){
						?>
						<li class="menu1">
							<a><?php echo $menu['TenMenu']; ?></a>
						</li>
						<?php
					    }
					    ?>
					
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
								<?php
								foreach ($loaisanphams as $loaisanpham) {
									$arrLoaiSanPhamCon = $db->getloaisanpham($loaisanpham['MaLoai']);

										echo "<li class='menu-sidebar'><a>" . $loaisanpham['TenLoai'] . "</a>";
											echo "<ul>";
									foreach ($arrLoaiSanPhamCon as  $loaiSanPhamCon) {
										echo "<li class='sub-menu'><a>" . $loaiSanPhamCon['TenLoai'] . "</a>";
									}
								
										echo "</ul>";
						        		echo "</li>";
				
								}
								?>


								

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
						<div class="banner">

							<div class="owl-carousel owl-theme" id="slide-banner">
								<div>
									<img class="img-responsive" src="img/slide-1.png" alt="">
								</div>
								<div>
									<img class="img-responsive" src="img/slide-2.png" alt="">
								</div>
								<div>
									<img class="img-responsive" src="img/slide-3.png" alt="">
								</div>
							</div>

						</div>


						<div class="title">
							<h3>Sản phẩm mới nhất</h3>
						</div>

					<div class="row">
				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham1.php" class="">
						        		<img  src="img/img-2.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham1.php">IPHONE X</a></h4>
						            <p class="text-danger">25.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>      
				        </div>

				        <!-- <?php
				        // include("product_list.php");
				        ?> -->

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham2.php" class="">
						        		<img  src="img/img-3.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham2.php">IPHONE 8</a></h4>
						            <p class="text-danger">25.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>      
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chiteisanpham3.php" class="">
						        		<img  src="img/img-4.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chiteisanpham3.php">IPHONE 7</a></h4>
						            <p class="text-danger">25.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div> 
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpahm4.php" class="">
						        		<img  src="img/img-5.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpahm4.php">SAMSUNG</a></h4>
						            <p class="text-danger">15.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>  
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham5.php" class="">
						        		<img  src="img/img-6.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham5.php">SAMSUNG J7</a></h4>
						            <p class="text-danger">25.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>   
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham6.php" class="">
						        		<img  src="img/img-7.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham6.php">IPHONE 6s</a></h4>
						            <p class="text-danger">20.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham7.php" class="">
						        		<img src="img/img-7.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham7.php">IPHONE 6s plus</a></h4>
						            <p class="text-danger">24.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham8.php" class="">
						        		<img  src="img/img-8.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham8.php">OPPO</a></h4>
						            <p class="text-danger">9.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>   
				        </div>
			        </div>

						<div class="title">
							<h3>Sản phẩm bán chạy nhất</h3>
						</div>

						<div class="row">
				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham1.php" class="">
						        		<img  src="img/img-2.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham1.php">IPHONE X</a></h4>
						            <p class="text-danger">25.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>      
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham2.php" class="">
						        		<img  src="img/img-3.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham2.php">IPHONE 8</a></h4>
						            <p class="text-danger">25.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>      
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chiteisanpham3.php" class="">
						        		<img  src="img/img-4.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chiteisanpham3.php">IPHONE 8</a></h4>
						            <p class="text-danger">25.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div> 
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpahm4.php" class="">
						        		<img  src="img/img-5.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpahm4.php">SAMSUNG</a></h4>
						            <p class="text-danger">15.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>  
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham5.php" class="">
						        		<img  src="img/img-6.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham5.php">SAMSUNG J7</a></h4>
						            <p class="text-danger">25.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>   
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham6.php" class="">
						        		<img  src="img/img-7.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham6.php">IPHONE 6s</a></h4>
						            <p class="text-danger">20.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham7.php" class="">
						        		<img src="img/img-7.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham7.php">IPHONE 6s plus</a></h4>
						            <p class="text-danger">24.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>
				        </div>

				        <div class="col-md-4">
					        <div class="item-product">
						        <div class="img-product">
						        	<a href="chitietsanpham8.php" class="">
						        		<img  src="img/img-8.jpg" alt="">
						        	</a>
						        </div>
						        <div class="text-center">
						            <h4 class="item-title"><a href="chitietsanpham8.php">OPPO</a></h4>
						            <p class="text-danger">9.000.000 VNĐ</p>
						            <p class="text-center">
						            	<button class="btn btn-success btn-sm">
											<i class="glyphicon glyphicon-shopping-cart"></i> Mua ngay
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="glyphicon glyphicon-eye-open"></i>Chi tiết
										</button>
						            </p>
					            </div>
					        </div>   
				        </div>
			        </div>
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
	<script src="js/app.js"></script>
</body>
</html>