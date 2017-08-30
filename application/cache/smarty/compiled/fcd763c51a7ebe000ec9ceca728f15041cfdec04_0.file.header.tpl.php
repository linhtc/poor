<?php /* Smarty version 3.1.27, created on 2017-08-31 00:08:31
         compiled from "/var/www/html/poor/application/views/frontend/layouts/header.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:22617905359a6f10fb87b60_26469386%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fcd763c51a7ebe000ec9ceca728f15041cfdec04' => 
    array (
      0 => '/var/www/html/poor/application/views/frontend/layouts/header.tpl',
      1 => 1504103723,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '22617905359a6f10fb87b60_26469386',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59a6f10fb8ad58_77835104',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59a6f10fb8ad58_77835104')) {
function content_59a6f10fb8ad58_77835104 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '22617905359a6f10fb87b60_26469386';
?>
<header>
	<div class="for-desktop">
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-1 text-left">
					<img width="100" height="100" src="<?php echo base_url();?>
media/images/logo.png" />
				</div>
				<div class="col-md-5 text-center">
					<h3 style="margin-top: 25px;">GIA SƯ SÁNG TẠO VIỆT</h3>
					<h5>Tri thức chắp cánh tương lai</h5>
				</div>
				<div class="col-md-4 text-center">
					<h5 style="margin-top: 20px;">Điện thoại: 0939.916.109 - 0974.438.816</h5>
					<h5>Email: giasusangtaovn@gmail.com</h5>
					<h5>Địa chỉ: 68/1 QL13 Hiệp Bình Chánh, Thủ Đức</h5>
				</div>
				<div class="col-md-2 text-right">	
					<img width="100" height="100" src="<?php echo base_url();?>
media/images/right_header.jpg" />
				</div>
			</div>
  		</div>
	</div>	
	
	<div class="for-mobile">
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-2 text-center">
					<img width="100" height="100" src="<?php echo base_url();?>
media/images/logo.png" />
				</div>
				<div class="col-md-5 text-center">
					<h3 style="margin-top: 25px;">GIA SƯ SÁNG TẠO VIỆT</h3>
					<h5>Tri thức chắp cánh tương lai</h5>
				</div>
				<div class="col-md-5 text-center">
					<h5 style="margin-top: 20px;">Điện thoại: 0939.916.109 - 0974.438.816</h5>
					<h5>Email: giasusangtaovn@gmail.com</h5>
					<h5>Địa chỉ: 68/1 QL13 Hiệp Bình Chánh, Thủ Đức</h5>
				</div>
			</div>
  		</div>
	</div>
</header><?php }
}
?>