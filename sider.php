<div id="page-content" class="home-page">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="left-menu">
					<p class="first"> DANH MỤC </p>
					<ul>
						<li>
							<a href="#">Sách theo nhà xuất bản</a>
								<ul class="submenu">
									<?php
									//lay id nha san xuat
									require 'inc/myconnect.php';
									$laydanhsachnhasx = "SELECT ID as manhasx,Ten from nhaxuatban";
									$rstennhasx = $conn->query($laydanhsachnhasx);
									if ($rstennhasx->num_rows > 0) {
										// output data of each row
										while ($row = $rstennhasx->fetch_assoc()) {

									?>
											<li><a href="category.php?manhasx=<?php echo $row["manhasx"] ?>"><?php echo $row["Ten"] ?></a></li>
									<?php
										}
									}
									?>
                                </ul>
						</li>
						<li><a href="sanphamoinhat.php">Sách mới nhất</a></li>
						<li><a href="#">Sách khuyến mãi</a></li>
					</ul>
				</div>
			</div><!-- /carousel -->

			<div class="col-lg-9">
				<!-- Carousel -->
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators hidden-xs">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="images/1.png" alt="First slide" width="1200" height="60">
							<!-- Static Header -->
							<div class="header-text hidden-xs">
								<div class="col-md-12 text-center">
								</div>
							</div><!-- /header-text -->
						</div>
						<div class="item">
							<img src="images/2.png" alt="Second slide" width="1200" height="60">
							<!-- Static Header -->
							<div class="header-text hidden-xs">
								<div class="col-md-12 text-center">
								</div>
							</div><!-- /header-text -->
						</div>
						<div class="item">
							<img src="images/3.png" alt="Third slide" width="1200" height="60">
							<!-- Static Header -->
							<div class="header-text hidden-xs">
								<div class="col-md-12 text-center">
								</div>
							</div><!-- /header-text -->
						</div>
					</div>
					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div><!-- /carousel -->
			</div>
		</div>