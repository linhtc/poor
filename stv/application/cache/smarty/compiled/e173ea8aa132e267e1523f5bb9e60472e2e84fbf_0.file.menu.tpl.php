<?php /* Smarty version 3.1.27, created on 2017-08-11 23:07:32
         compiled from "/var/www/html/poor/stv/application/views/frontend/layouts/menu.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:261253453598dd644842351_90790894%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e173ea8aa132e267e1523f5bb9e60472e2e84fbf' => 
    array (
      0 => '/var/www/html/poor/stv/application/views/frontend/layouts/menu.tpl',
      1 => 1502465143,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '261253453598dd644842351_90790894',
  'variables' => 
  array (
    'uuid' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598dd644851f91_85860198',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598dd644851f91_85860198')) {
function content_598dd644851f91_85860198 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '261253453598dd644842351_90790894';
?>
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
			<li class=""><a href="<?php echo base_url();?>
trang-chu">Trang chủ</a></li>
			<li class="<?php if ($_smarty_tpl->tpl_vars['uuid']->value == 'introduce') {?>active<?php }?>"><a href="<?php echo base_url();?>
gioi-thieu">Giới thiệu</a></li>
			<li class=""><a href="<?php echo base_url();?>
tin-tuc">Tin tức</a></li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="<?php echo base_url();?>
tai-lieu">
					Tài liệu			
				</a>
				<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				<ul class="dropdown-menu fadeInUp animate1">
					<li class="">
						<a href="<?php echo base_url();?>
tai-lieu/mon-toan">Tài liệu môn Toán</a>
					</li>
					<li class="">
						<a href="<?php echo base_url();?>
tai-lieu/mon-van">Tài liệu môn Văn</a>
					</li>
					<li class="">
						<a href="<?php echo base_url();?>
tai-lieu/mon-anh">Tài liệu môn Anh</a>
					</li>
				</ul>
			</li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="<?php echo base_url();?>
tai-lieu">
					Đề thi			
				</a>
				<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				<ul class="dropdown-menu fadeInUp animate1">
					<li class="">
						<a href="<?php echo base_url();?>
de-thi/mon-toan">Đề thi môn Toán</a>
					</li>
					<li class="">
						<a href="<?php echo base_url();?>
de-thi/mon-van">Đề thi môn Văn</a>
					</li>
					<li class="">
						<a href="<?php echo base_url();?>
de-thi/mon-anh">Đề thi môn Anh</a>
					</li>
				</ul>
			</li>
			<li class=""><a href="<?php echo base_url();?>
lop-moi">Lớp mới</a></li>
			<li class=""><a href="<?php echo base_url();?>
hoc-phi">Học phí</a></li>
			<li class=""><a href="<?php echo base_url();?>
muc-phi-nhan-lop">Mức phí nhận lớp</a></li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="<?php echo base_url();?>
tai-lieu">
					Đăng ký			
				</a>
				<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				<ul class="dropdown-menu fadeInUp animate1">
					<li class="">
						<a href="<?php echo base_url();?>
dang-ky-lam-gia-su">Giáo viên/Sinh viên</a>
					</li>
					<li class="">
						<a href="<?php echo base_url();?>
dang-ky-tim-gia-su">Phụ huynh/Học sinh</a>
					</li>
				</ul>
			</li>
			<li class=""><a href="<?php echo base_url();?>
tuyen-dung">Tuyển dụng</a></li>
			<li class=""><a href="<?php echo base_url();?>
lien-he">Liên hệ</a></li>

						<li class="dropdown" style="display: none;">
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
					</ul>


	</div>  

</nav><?php }
}
?>