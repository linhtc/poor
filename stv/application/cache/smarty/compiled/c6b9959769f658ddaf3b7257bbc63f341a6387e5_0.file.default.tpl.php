<?php /* Smarty version 3.1.27, created on 2017-08-10 22:52:11
         compiled from "/var/www/html/poor/stv/application/views/frontend/layouts/default.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1923779099598c812b9b9001_10835808%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c6b9959769f658ddaf3b7257bbc63f341a6387e5' => 
    array (
      0 => '/var/www/html/poor/stv/application/views/frontend/layouts/default.tpl',
      1 => 1502380255,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1923779099598c812b9b9001_10835808',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598c812b9c3399_20560704',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598c812b9c3399_20560704')) {
function content_598c812b9c3399_20560704 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1923779099598c812b9b9001_10835808';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<base href="http://giasunhanvan.vn/" />
	<link rel="canonical" href="http://giasunhanvan.vn/thanh-toan.html" />	

    <link href="http://giasunhanvan.vn/templates/images/favicon.png" rel="shortcut icon" type="image/x-icon" />
	
	<title>Thanh toán</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />

	<link href="<?php echo base_url();?>
static/default/frontend/extra/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/js/jquery-1.11.0.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/js/detect.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/extra/bootstrap/bootstrap.min.js"><?php echo '</script'; ?>
>
	<link href="<?php echo base_url();?>
static/default/frontend/fonts/font-awesome/font-awesome.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/fonts/font_entypo/entypo.css" rel="stylesheet" />

    <!-- <link rel='stylesheet'  href='http://giasunhanvan.vn/templates/extra/layerslider/layerslider.css' type='text/css' media='all' />
    <?php echo '<script'; ?>
 type='text/javascript' src='http://giasunhanvan.vn/templates/extra/layerslider/jquery-migrate.min.js'><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type='text/javascript' src='http://giasunhanvan.vn/templates/extra/layerslider/greensock.js'><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type='text/javascript' src='http://giasunhanvan.vn/templates/extra/layerslider/layerslider.kreaturamedia.js'><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type='text/javascript' src='http://giasunhanvan.vn/templates/extra/layerslider/layerslider.transitions.js'><?php echo '</script'; ?>
> -->
	
	<link href="<?php echo base_url();?>
static/default/frontend/extra/owlcarousel/owl.carousel.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/extra/owlcarousel/owl.carousel.js"><?php echo '</script'; ?>
>
	
	<link href="http://giasunhanvan.vn/templates/extra/wow/animate.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/wow/wow.min.js"><?php echo '</script'; ?>
>
	
	<!-- <link href="http://giasunhanvan.vn/templates/extra/bootstrap-datepicker/bootstrap-datepicker.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/bootstrap-datepicker/bootstrap-datepicker.js"><?php echo '</script'; ?>
> -->
	
	<!-- <link href="http://giasunhanvan.vn/templates/extra/select2/select2.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/select2/select2.full.js"><?php echo '</script'; ?>
> -->
	
	<!-- <link href="http://giasunhanvan.vn/templates/extra/sweetalert/sweetalert.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/sweetalert/sweetalert.min.js"><?php echo '</script'; ?>
> -->
	
	<!-- <link href="http://giasunhanvan.vn/templates/extra/icheck/square/blue.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/icheck/icheck.js"><?php echo '</script'; ?>
> -->
	
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/extra/jcarousellite/jquery.jcarousellite.js"><?php echo '</script'; ?>
>
	
	<!-- <link href="http://giasunhanvan.vn/templates/extra/fancybox/jquery.fancybox.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/fancybox/jquery.fancybox.js"><?php echo '</script'; ?>
>	
	<?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/fancybox/jquery.mousewheel-3.0.6.pack.js"><?php echo '</script'; ?>
> -->	

	<!-- <?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/bootstrap-filestyle/bootstrap-filestyle.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/validate/jquery.validate.min.js"><?php echo '</script'; ?>
> -->	

	
	<link href="<?php echo base_url();?>
static/default/frontend/css/style.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/css/module.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/css/responsive.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/css/responsive_module.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/js/home.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/js/module.js"><?php echo '</script'; ?>
>
	
	<style>
    
    	.row-header{
    		background: #01315A;
    margin: 0px;
    padding: 20px 0px;
    color: #FFF;
    	}
    
    .header-left{
    	background-image: url("http://giasusangtaoviet.edu.vn/wp-content/uploads/2017/07/Logo-1-e1499270184520.png");
    	background-size: contain;
    	background-repeat: no-repeat;
    	background-position: center;
    	width: 100%;
    	height: 100px;
    }
    
    .header-center h2{
    	margin-top: 10px;
    }
    
    .header-right{
    	/* background-image: url("https://api.asm.skype.com/v1/objects/0-sa-d1-9a1613aefa56b9676b8a8dcccd8a673f/views/imgpsh_fullsize"); */
    	background-image: url("<?php echo base_url();?>
media/images/header/teacher.png");
    	background-size: contain;
    	background-repeat: no-repeat;
    	background-position: center;
    	width: 100%;
    	height: 100px;
    }
    
    
</style>

</head>

<body class="module">

<div class="fback-top"><i class="fa fa-angle-double-up"></i></div>

<div class="container">
	
<header>
	<div class="for-desktop">
			<div class="row row-header">
		  		<div class="col-sm-3 text-left">
		  			<div class="header-left">
		  			
		  			</div>
		  		</div>
		  		<div class="col-sm-6 text-center header-center">
		  			<h2>GIA SƯ SÁNG TẠO VIỆT</h2>
		  			<h5>Tri thức chắp cánh tương lai</h5>
		  			<h5>Địa chỉ: 68/1 QL13 Hiệp Bình Chánh, Thủ Đức, Hồ Chí Minh</h5>
		  		</div>
		  		<div class="col-sm-3 text-right">
		  			<div class="header-right">
		  			
		  			</div>
		  		</div>
		  	</div>
		  
	</div>	
	
	<div class="for-mobile">
		<img src="http://giasunhanvan.vn/img_data/images/696554368374_bner-(1).gif" alt="Banner Mobile">
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
			<li class=""><a href="http://giasunhanvan.vn/" title="Trang chủ">Trang chủ</a></li>

						<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="http://giasunhanvan.vn/lop-moi.html" title="Lớp mới">
					Lớp mới				</a>
								<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				
				<ul class="dropdown-menu fadeInUp animate1">
										<li class="">
						<a href="http://giasunhanvan.vn/lop-moi-chua-giao.html" title="Lớp mới chưa giao">Lớp mới chưa giao</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/gia-su-day-cap-1.html" title="Gia sư dạy cấp 1">Gia sư dạy cấp 1</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/gia-su-day-cap-2.html" title="Gia sư dạy cấp 2">Gia sư dạy cấp 2</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/gia-su-day-cap-3.html" title="Gia sư dạy cấp 3">Gia sư dạy cấp 3</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/gia-su-day-ngoai-ngu.html" title="Gia sư dạy ngoại ngữ">Gia sư dạy ngoại ngữ</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/gia-su-day-nang-khieu.html" title="Gia sư dạy năng khiếu">Gia sư dạy năng khiếu</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/gia-su-day-lop-khac.html" title="Gia sư dạy lớp khác">Gia sư dạy lớp khác</a>
											</li>
					
				</ul>
							</li>
						<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="http://giasunhanvan.vn/phu-huynh.html" title="Phụ huynh">
					Phụ huynh				</a>
								<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				
				<ul class="dropdown-menu fadeInUp animate1">
										<li class="">
						<a href="http://giasunhanvan.vn/dang-ky-tim-gia-su.html" title="Đăng ký tìm gia sư">Đăng ký tìm gia sư</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/phu-huynh-can-biet.html" title="Phụ huynh cần biết">Phụ huynh cần biết</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/phu-huynh-luu-y.html" title="Phụ huynh lưu ý">Phụ huynh lưu ý</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/hoc-phi-gia-su.html" title="Học phí gia sư">Học phí gia sư</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/dich-vu-gia-su.html" title="Dịch vụ gia sư">Dịch vụ gia sư</a>
											</li>
					
				</ul>
							</li>
						<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="http://giasunhanvan.vn/gia-su.html" title="Gia sư">
					Gia sư				</a>
								<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				
				<ul class="dropdown-menu fadeInUp animate1">
										<li class="">
						<a href="http://giasunhanvan.vn/dang-ky-lam-gia-su.html" title="Đăng ký làm gia sư">Đăng ký làm gia sư</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/quy-trinh-nhan-lop.html" title="Quy trình nhận lớp">Quy trình nhận lớp</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/gioi-thieu-lop-moi.html" title="Giới thiệu lớp mới">Giới thiệu lớp mới</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/phi-chuyen-khoan.html" title="Phí chuyển khoản">Phí chuyển khoản</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/gia-su-can-biet.html" title="Gia sư cần biết">Gia sư cần biết</a>
											</li>
					
				</ul>
							</li>
						<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="http://giasunhanvan.vn/tai-lieu.html" title="Tài liệu">
					Tài liệu				</a>
								<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				
				<ul class="dropdown-menu fadeInUp animate1">
										<li class="dropdown-submenu">
						<a href="http://giasunhanvan.vn/tai-lieu-mon-toan.html" title="Tài liệu môn toán">Tài liệu môn toán</a>
												<ul class="dropdown-menu fadeInRight animate1">
														<li><a href="http://giasunhanvan.vn/tai-lieu-toan-lop-5.html" title="Tài liệu toán lớp 5">Tài liệu toán lớp 5</a></li>
														<li><a href="http://giasunhanvan.vn/tai-lieu-toan-lop-6.html" title="Tài liệu toán lớp 6">Tài liệu toán lớp 6</a></li>
														<li><a href="http://giasunhanvan.vn/tai-lieu-toan-lop-7.html" title="Tài liệu toán lớp 7">Tài liệu toán lớp 7</a></li>
													</ul> 
											</li>
										<li class="dropdown-submenu">
						<a href="http://giasunhanvan.vn/tai-lieu-mon-hoa.html" title="Tài liệu môn Hóa">Tài liệu môn Hóa</a>
												<ul class="dropdown-menu fadeInRight animate1">
														<li><a href="http://giasunhanvan.vn/tai-lieu-hoa-lop-5.html" title="Tài liệu hóa lớp 5">Tài liệu hóa lớp 5</a></li>
														<li><a href="http://giasunhanvan.vn/tai-lieu-hoa-lop-6.html" title="Tài liệu hóa lớp 6">Tài liệu hóa lớp 6</a></li>
														<li><a href="http://giasunhanvan.vn/tai-lieu-hoa-lop-7.html" title="Tài liệu hóa lớp 7">Tài liệu hóa lớp 7</a></li>
													</ul> 
											</li>
										<li class="dropdown-submenu">
						<a href="http://giasunhanvan.vn/tai-lieu-mon-ly.html" title="Tài liệu môn Lý">Tài liệu môn Lý</a>
												<ul class="dropdown-menu fadeInRight animate1">
														<li><a href="http://giasunhanvan.vn/tai-lieu-ly-lop-5.html" title="Tài liệu lý lớp 5">Tài liệu lý lớp 5</a></li>
														<li><a href="http://giasunhanvan.vn/tai-lieu-ly-lop-6.html" title="Tài liệu lý lớp 6">Tài liệu lý lớp 6</a></li>
														<li><a href="http://giasunhanvan.vn/tai-lieu-ly-lop-7.html" title="Tài liệu lý lớp 7">Tài liệu lý lớp 7</a></li>
													</ul> 
											</li>
					
				</ul>
							</li>
						<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="http://giasunhanvan.vn/video.html" title="Video">
					Video				</a>
								<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				
				<ul class="dropdown-menu fadeInUp animate1">
										<li class="">
						<a href="http://giasunhanvan.vn/video-mon-toan.html" title="Video môn Toán">Video môn Toán</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/video-mon-ly.html" title="Video môn Lý">Video môn Lý</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/video-mon-hoa.html" title="Video môn Hóa">Video môn Hóa</a>
											</li>
					
				</ul>
							</li>
						<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="http://giasunhanvan.vn/tuyen-dung.html" title="Tuyển dụng">
					Tuyển dụng				</a>
								<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				
				<ul class="dropdown-menu fadeInUp animate1">
										<li class="">
						<a href="http://giasunhanvan.vn/tuyen-dung-phat-to-roi.html" title="Tuyển dụng phát tờ rơi">Tuyển dụng phát tờ rơi</a>
											</li>
										<li class="">
						<a href="http://giasunhanvan.vn/tuyen-dung-truc-dien-thoai.html" title="Tuyển dụng trực điện thoại">Tuyển dụng trực điện thoại</a>
											</li>
					
				</ul>
							</li>
						<li class="">
				<a  href="http://giasunhanvan.vn/tin-tuc.html" title="Tin tức">
					Tin tức				</a>
							</li>
						<li class=" active">
				<a  href="http://giasunhanvan.vn/thanh-toan.html" title="Thanh toán">
					Thanh toán				</a>
							</li>
						<li class="">
				<a  href="http://giasunhanvan.vn/lien-he.html" title="Liên hệ">
					Liên hệ				</a>
							</li>
					</ul>


	</div>  

</nav>	


<div class="clearfix"></div>

<div class="clearfix"></div>

<section class="login-mobile hidden-xs">
	<div class="title-style1 text-center"><a>Gia sư đăng nhập</a></div>
	<div class="box login">
		<div class="col-xs-12 mb10">
				<form method="post" action="" class="form-login-mobile">
			<div class="input-group">
				<input type="text" class="form-control" name="phone" placeholder="Nhập số điện thoại" autocomplete="off">
				<div class="input-group-addon"><button type="submit"><i class="fa fa-search"></i></button></div>
			</div>
		</form>
				</div>
		<div class="clearfix"></div>
		
		<!-- <div class="col-xs-6 col-mm-12 plr5 item"><a href="http://giasunhanvan.vn/thong-ke-nhan-lop.html" title="Thống kê nhận lớp">Thống kê nhận lớp<br> <img src="http://giasunhanvan.vn//templates/images/new.gif" alt="moi"></a></div> -->
		
		<div class="col-xs-6 col-mm-12 plr5 item"><a href="http://giasunhanvan.vn/lop-moi-chua-giao.html" title="Lớp mới chưa giao">Lớp mới chưa giao<br> <img src="http://giasunhanvan.vn/templates/images/hot.gif" alt="hot"></a></div>
		
		<div class="clearfix"></div>
				<form method="post" action="" class="font12">
			<div class="col-xs-4 plr5">
				<select class="form-control select-link select2" style="width:100%;">
					<option value="">- Gia sư môn -</option>
										<option value="http://giasunhanvan.vn/gia-su-day-mon-toan-ly.html">Gia sư dạy môn Toán, Lý</option>
										<option value="http://giasunhanvan.vn/gia-su-day-mon-hoa.html">Gia sư dạy môn Hóa</option>
										<option value="http://giasunhanvan.vn/gia-su-day-mon-anh-van-giao-tiep.html">Gia sư dạy môn anh văn giao tiếp</option>
									</select>
			</div>
			<div class="col-xs-4 plr5">
				<select class="form-control select-link select2" style="width:100%;">
					<option value="">- Gia sư lớp -</option>
									</select>
			</div>
			<div class="col-xs-4 plr5">
				<select class="form-control select-link select2" style="width:100%;">
					<option value="">- Gia sư quận -</option>
									</select>
			</div>
		</form>
	</div>
</section>

<style type="text/css">
	.plr0{ padding-left: 0px; padding-right: 0px; }
	.slide-adv .box.list-category ul a{ background: #fcf0a1; }
	@media (max-width: 991px){
		.adv-right img{ height: auto !important; padding: 5px; margin-bottom: 5px; }
		.clearfix-mobile{ clear: both; }
		.mg-mobile{ margin-top: 10px; }
	}
</style>

	


<section class="include">

	<ul class="breadcrumb">
		<li><a href="http://giasunhanvan.vn/" title="Trang chủ">Trang chủ</a></li>
				<li><a href='http://giasunhanvan.vn/thanh-toan.html' title='Thanh toán'>Thanh toán</a></li>		
			</ul>
	<div class="clearfix"></div>
	<div class="row" style="min-height:300px;">
		<div class="col-12">
			
		</div>
	</div>
</section>
	
<div class="clearfix"></div>

<footer class="container-fluid text-center">
  <p>Copyright © 2017 Gia sư Sáng Tạo Việt.</p>
</footer>


</div>

<div class="modal fade" id="Modal-alert" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h3>Thành công</h3>
			<div class="text-center">
				<p></p>
			</div>
		
		</div>
	</div>
</div>
</body>
</html>

<?php }
}
?>