<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="http://giasunhanvan.vn/templates/images/favicon.png" rel="shortcut icon" type="image/x-icon" />

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
		
	<link href="{base_url()}static/default/frontend/css/style.css" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/css/responsive.css" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/css/custom.css" rel="stylesheet" />
</head>

<body class="module">
	<div class="container">
		<header>
			<div class="for-desktop">
				<!-- <img src="http://giasunhanvan.vn/img_data/images/342324279068_banner1.gif" alt="Banner" /> -->
				<div class="jumbotron">
					<div class="row">
						<div class="col-md-3 text-left">
							<img width="170" height="140" src="http://giasusangtaoviet.edu.vn/wp-content/uploads/2017/07/Logo-1-e1499270184520.png" />
						</div>
						<div class="col-md-6 text-center">
							<h2 style="margin-top: 5px;">GIA SƯ SÁNG TẠO VIỆT</h2>
							<h4>Tri thức chắp cánh tương lai</h4>
							<h6>0939.916.109 - 0974.438.816</h6>
							<h6>giasusangtaovn@gmail.com</h6>
							<h6>68/1 QL13 Hiệp Bình Chánh, Thủ Đức</h6>
						</div>
						<div class="col-md-3 text-right">	
							<img width="170" height="140" src="{base_url()}media/images/right_header.jpg" />
						</div>
					</div>
		  		</div>
			</div>	
			
			<div class="for-mobile">
				<img src="http://giasunhanvan.vn/img_data/images/696554368374_bner-(1).gif" alt="Banner Mobile" />
			</div>
		</header>
		
		<nav class="nav">
			<div class="navbar-header" >
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="fa fa-bars"></span>
				</button>
				<a class="navbar-brand" href="http://giasunhanvan.vn/" title="Trang chủ">
					<i class="fa fa-home"></i>
				</a>
			</div>
			<div class="collapse navbar-collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav">
					<li class=""><a href="{base_url()}">Trang chủ</a></li>
					<li class=""><a href="{base_url()}gioi-thieu">Giới thiệu</a></li>
					<li class=""><a href="{base_url()}tin-tuc">Tin tức</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="{base_url()}tai-lieu">Tài liệu</a>
						<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
						<ul class="dropdown-menu fadeInUp animate1">
							<li class="dropdown-submenu">
								<a href="{base_url()}tai-lieu/mon-toan">Tài liệu môn toán</a>
								<ul class="dropdown-menu fadeInRight animate1">
									<li><a href="{base_url()}tai-lieu/mon-toan/lop-1">Tài liệu toán lớp 1</a></li>
									<li><a href="{base_url()}tai-lieu/mon-toan/lop-2">Tài liệu toán lớp 2</a></li>
									<li><a href="{base_url()}tai-lieu/mon-toan/lop-3">Tài liệu toán lớp 3</a></li>
								</ul> 
							</li>
							<li class="dropdown-submenu">
								<a href="{base_url()}tai-lieu/mon-van">Tài liệu môn văn</a>
								<ul class="dropdown-menu fadeInRight animate1">
									<li><a href="{base_url()}tai-lieu/mon-van/lop-1">Tài liệu văn lớp 1</a></li>
									<li><a href="{base_url()}tai-lieu/mon-van/lop-2">Tài liệu văn lớp 2</a></li>
									<li><a href="{base_url()}tai-lieu/mon-van/lop-3">Tài liệu văn lớp 3</a></li>
								</ul> 
							</li>
							<li class="dropdown-submenu">
								<a href="{base_url()}tai-lieu/mon-van">Tài liệu môn anh</a>
								<ul class="dropdown-menu fadeInRight animate1">
									<li><a href="{base_url()}tai-lieu/mon-anh/lop-1">Tài liệu anh lớp 1</a></li>
									<li><a href="{base_url()}tai-lieu/mon-anh/lop-2">Tài liệu anh lớp 2</a></li>
									<li><a href="{base_url()}tai-lieu/mon-anh/lop-3">Tài liệu anh lớp 3</a></li>
								</ul> 
							</li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="{base_url()}tai-lieu">Đề thi</a>
						<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
						<ul class="dropdown-menu fadeInUp animate1">
							<li class="dropdown-submenu">
								<a href="{base_url()}tai-lieu/mon-toan">Đề thi môn toán</a>
								<ul class="dropdown-menu fadeInRight animate1">
									<li><a href="{base_url()}tai-lieu/mon-toan/lop-1">Đề thi toán lớp 1</a></li>
									<li><a href="{base_url()}tai-lieu/mon-toan/lop-2">Đề thi toán lớp 2</a></li>
									<li><a href="{base_url()}tai-lieu/mon-toan/lop-3">Đề thi toán lớp 3</a></li>
								</ul> 
							</li>
							<li class="dropdown-submenu">
								<a href="{base_url()}tai-lieu/mon-van">Đề thi môn văn</a>
								<ul class="dropdown-menu fadeInRight animate1">
									<li><a href="{base_url()}tai-lieu/mon-van/lop-1">Đề thi văn lớp 1</a></li>
									<li><a href="{base_url()}tai-lieu/mon-van/lop-2">Đề thi văn lớp 2</a></li>
									<li><a href="{base_url()}tai-lieu/mon-van/lop-3">Đề thi văn lớp 3</a></li>
								</ul> 
							</li>
							<li class="dropdown-submenu">
								<a href="{base_url()}tai-lieu/mon-van">Đề thi môn anh</a>
								<ul class="dropdown-menu fadeInRight animate1">
									<li><a href="{base_url()}tai-lieu/mon-anh/lop-1">Đề thi anh lớp 1</a></li>
									<li><a href="{base_url()}tai-lieu/mon-anh/lop-2">Đề thi anh lớp 2</a></li>
									<li><a href="{base_url()}tai-lieu/mon-anh/lop-3">Đề thi anh lớp 3</a></li>
								</ul> 
							</li>
						</ul>
					</li>
					<li class=""><a href="{base_url()}lop-moi">Lớp mới</a></li>
					<li class=""><a href="{base_url()}hoc-phi">Học phí</a></li>
					<li class=""><a href="{base_url()}muc-phi-nhan-lop">Mức phí nhận lớp</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="{base_url()}dang-ky">Đăng ký</a>
						<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
						<ul class="dropdown-menu fadeInUp animate1">
							<li class="">
								<a href="{base_url()}dang-ky/lam-gia-su">Làm gia sư</a>
							</li>
							<li class="">
								<a href="{base_url()}dang-ky/tim-gia-su">Tìm gia sư</a>
							</li>
						</ul>
					</li>
					<li class=""><a href="{base_url()}tuyen-dung">Tuyển dụng</a></li>
					<li class=""><a href="{base_url()}lien-he">Liên hệ</a></li>
				</ul>
			</div>  
		</nav>	
		
		<div class="clearfix"></div>
		
		<section class="include">
		
			<ul class="breadcrumb" style="display: none;">
				<li><a href="http://giasunhanvan.vn/" title="Trang chủ">Trang chủ</a></li>
				<li><a href="http://giasunhanvan.vn/lien-he.html" title="Liên hệ">Liên hệ</a></li>
			</ul>
			
			<div class="clearfix"></div>
		
			<div class="row">	
				
			</div>
		
		</section>
		
		<div class="clearfix"></div>
		
		<footer>
			<div class="row">
				<div class="col-md-12 text-center">
					Copyright © 2017 Gia sư Sáng Tạo Việt.
				</div>
			</div>
		</footer>
	</div>

</body>
</html>

