<?php /* Smarty version 3.1.27, created on 2017-08-31 00:08:31
         compiled from "/var/www/html/poor/application/views/frontend/layouts/menu.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:204025832659a6f10fb91b15_08086978%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'aaad6ac3d2587b2a1290deadf459083a36ba0756' => 
    array (
      0 => '/var/www/html/poor/application/views/frontend/layouts/menu.tpl',
      1 => 1504011717,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '204025832659a6f10fb91b15_08086978',
  'variables' => 
  array (
    'uuid' => 0,
    'isub' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59a6f10fbadaf1_20578364',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59a6f10fbadaf1_20578364')) {
function content_59a6f10fbadaf1_20578364 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '204025832659a6f10fb91b15_08086978';
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
			<li class="<?php if ($_smarty_tpl->tpl_vars['uuid']->value == 'home') {?>active<?php }?>"><a href="<?php echo base_url();?>
">Trang chủ</a></li>
			<li class="<?php if ($_smarty_tpl->tpl_vars['uuid']->value == 'introduction') {?>active<?php }?>"><a href="<?php echo base_url();?>
gioi-thieu">Giới thiệu</a></li>
			<li class=""><a href="<?php echo base_url();?>
tin-tuc">Tin tức</a></li>
			<li class="dropdown">
				<a href="<?php echo base_url();?>
tai-lieu">Tài liệu</a>
				<!-- <a href="<?php echo base_url();?>
tai-lieu" class="dropdown-toggle" data-toggle="dropdown">Tài liệu</a> -->
				<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				<ul class="dropdown-menu fadeInUp animate1">
					<?php
$_from = $_SESSION['subject_menu'];
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['isub'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['isub']->_loop = false;
$_smarty_tpl->tpl_vars['ksub'] = new Smarty_Variable;
foreach ($_from as $_smarty_tpl->tpl_vars['ksub']->value => $_smarty_tpl->tpl_vars['isub']->value) {
$_smarty_tpl->tpl_vars['isub']->_loop = true;
$foreach_isub_Sav = $_smarty_tpl->tpl_vars['isub'];
?>
					<li class="">
						<a href="<?php echo base_url();?>
tai-lieu/<?php echo $_smarty_tpl->tpl_vars['isub']->value->friendly;?>
">Tài liệu môn <?php echo $_smarty_tpl->tpl_vars['isub']->value->subject;?>
</a>
					</li>
					<?php
$_smarty_tpl->tpl_vars['isub'] = $foreach_isub_Sav;
}
?>
				</ul>
			</li>
			<li class="dropdown">
				<a href="<?php echo base_url();?>
de-thi">Đề thi</a>
				<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				<ul class="dropdown-menu fadeInUp animate1">
					<li class="dropdown-submenu">
						<a href="<?php echo base_url();?>
tai-lieu/mon-toan">Đề thi môn toán</a>
						<ul class="dropdown-menu fadeInRight animate1">
							<li><a href="<?php echo base_url();?>
tai-lieu/mon-toan/lop-1">Đề thi toán lớp 1</a></li>
							<li><a href="<?php echo base_url();?>
tai-lieu/mon-toan/lop-2">Đề thi toán lớp 2</a></li>
							<li><a href="<?php echo base_url();?>
tai-lieu/mon-toan/lop-3">Đề thi toán lớp 3</a></li>
						</ul> 
					</li>
					<li class="dropdown-submenu">
						<a href="<?php echo base_url();?>
tai-lieu/mon-van">Đề thi môn văn</a>
						<ul class="dropdown-menu fadeInRight animate1">
							<li><a href="<?php echo base_url();?>
tai-lieu/mon-van/lop-1">Đề thi văn lớp 1</a></li>
							<li><a href="<?php echo base_url();?>
tai-lieu/mon-van/lop-2">Đề thi văn lớp 2</a></li>
							<li><a href="<?php echo base_url();?>
tai-lieu/mon-van/lop-3">Đề thi văn lớp 3</a></li>
						</ul> 
					</li>
					<li class="dropdown-submenu">
						<a href="<?php echo base_url();?>
tai-lieu/mon-van">Đề thi môn anh</a>
						<ul class="dropdown-menu fadeInRight animate1">
							<li><a href="<?php echo base_url();?>
tai-lieu/mon-anh/lop-1">Đề thi anh lớp 1</a></li>
							<li><a href="<?php echo base_url();?>
tai-lieu/mon-anh/lop-2">Đề thi anh lớp 2</a></li>
							<li><a href="<?php echo base_url();?>
tai-lieu/mon-anh/lop-3">Đề thi anh lớp 3</a></li>
						</ul> 
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
dang-ky">Đăng ký</a>
				<i class="btn-dropdown dropdown-toggle fa fa-chevron-down" data-toggle="dropdown"></i>
				<ul class="dropdown-menu fadeInUp animate1">
					<li class="">
						<a href="<?php echo base_url();?>
dang-ky/lam-gia-su">Giáo viên/Sinh viên</a>
					</li>
					<li class="">
						<a href="<?php echo base_url();?>
dang-ky/tim-gia-su">Phụ huynh/Học sinh</a>
					</li>
				</ul>
			</li>
			<li class=""><a href="<?php echo base_url();?>
tuyen-dung">Tuyển dụng</a></li>
			<li class="<?php if ($_smarty_tpl->tpl_vars['uuid']->value == 'contact') {?>active<?php }?>"><a href="<?php echo base_url();?>
lien-he">Liên hệ</a></li>
		</ul>
	</div>  
</nav><?php }
}
?>