<?php /* Smarty version 3.1.27, created on 2017-08-29 21:13:59
         compiled from "/var/www/html/poor/application/views/frontend/layouts/header.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:31859743159a576a7da8fd4_13186469%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fcd763c51a7ebe000ec9ceca728f15041cfdec04' => 
    array (
      0 => '/var/www/html/poor/application/views/frontend/layouts/header.tpl',
      1 => 1504012035,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '31859743159a576a7da8fd4_13186469',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59a576a7daa973_65112093',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59a576a7daa973_65112093')) {
function content_59a576a7daa973_65112093 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '31859743159a576a7da8fd4_13186469';
?>
<header>
	<div class="for-desktop">
		<!-- <img src="http://giasunhanvan.vn/img_data/images/342324279068_banner1.gif" alt="Banner" /> -->
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-3 text-left">
					<img width="100" height="100" src="http://giasusangtaoviet.edu.vn/wp-content/uploads/2017/07/Logo-1-e1499270184520.png" />
				</div>
				<div class="col-md-6 text-center">
					<h3 style="margin-top: 0px;">GIA SƯ SÁNG TẠO VIỆT</h3>
					<h5>Tri thức chắp cánh tương lai</h5>
					<h6>0939.916.109 - 0974.438.816</h6>
					<h6>giasusangtaovn@gmail.com</h6>
					<h6>68/1 QL13 Hiệp Bình Chánh, Thủ Đức</h6>
				</div>
				<div class="col-md-3 text-right">	
					<img width="100" height="100" src="<?php echo base_url();?>
media/images/right_header.jpg" />
				</div>
			</div>
  		</div>
	</div>	
	
	<div class="for-mobile">
		<img src="http://giasunhanvan.vn/img_data/images/696554368374_bner-(1).gif" alt="Banner Mobile" />
	</div>
</header><?php }
}
?>