<?php /* Smarty version 3.1.27, created on 2017-08-29 21:24:44
         compiled from "/var/www/html/poor/application/views/frontend/home/view.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:76553759159a5792c891f93_33774500%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '498ff80b229fd00a53d5842d87bfa0b6d4ba427d' => 
    array (
      0 => '/var/www/html/poor/application/views/frontend/home/view.tpl',
      1 => 1504014972,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '76553759159a5792c891f93_33774500',
  'variables' => 
  array (
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59a5792c895738_15861625',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59a5792c895738_15861625')) {
function content_59a5792c895738_15861625 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '76553759159a5792c891f93_33774500';
?>
<div class="row home-container" style="min-height: 300px;">
	<div class="col-md-9">
		<?php echo $_smarty_tpl->tpl_vars['item']->value->page_content;?>

	</div>
	<div class="col-md-3">
		<div class="panel panel-primary">
		  	<div class="panel-heading">Tài liệu mới</div>
		  	<div class="panel-body">
				<ul class="list-group">
				  	<li class="list-group-item">First item</li>
				  	<li class="list-group-item">Second item</li>
					<li class="list-group-item">Third item</li>
				</ul>
			</div>
		</div>
		<div class="panel panel-primary">
		  	<div class="panel-heading">Lớp mới đăng</div>
		  	<div class="panel-body">
				<ul class="list-group">
				  	<li class="list-group-item">First item</li>
				  	<li class="list-group-item">Second item</li>
					<li class="list-group-item">Third item</li>
				</ul>
			</div>
		</div>
		<div class="panel panel-primary">
		  	<div class="panel-heading">Tin tức & sự kiện</div>
		  	<div class="panel-body">
				<ul class="list-group">
				  	<li class="list-group-item">First item</li>
				  	<li class="list-group-item">Second item</li>
					<li class="list-group-item">Third item</li>
				</ul>
			</div>
		</div>
		<div class="panel panel-primary">
		  	<div class="panel-heading">Thống kê truy cập</div>
		  	<div class="panel-body">
				<ul class="list-group">
				  	<li class="list-group-item">Hôm nay <span class="badge">12</span></li>
				  	<li class="list-group-item">Trong tuần <span class="badge">123</span></li>
				  	<li class="list-group-item">Trong tháng <span class="badge">1234</span></li>
				  	<li class="list-group-item">Tất cả <span class="badge">12345</span></li>
				</ul>
			</div>
		</div>
	</div>
</div><?php }
}
?>