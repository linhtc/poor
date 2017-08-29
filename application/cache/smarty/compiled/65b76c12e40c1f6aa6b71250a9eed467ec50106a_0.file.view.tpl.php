<?php /* Smarty version 3.1.27, created on 2017-08-29 21:13:59
         compiled from "/var/www/html/poor/application/views/frontend/document/view.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:56944211359a576a7d93934_24616635%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '65b76c12e40c1f6aa6b71250a9eed467ec50106a' => 
    array (
      0 => '/var/www/html/poor/application/views/frontend/document/view.tpl',
      1 => 1504015947,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '56944211359a576a7d93934_24616635',
  'variables' => 
  array (
    'documents' => 0,
    'item' => 0,
    'subject' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59a576a7d9a7f5_31420396',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59a576a7d9a7f5_31420396')) {
function content_59a576a7d9a7f5_31420396 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '56944211359a576a7d93934_24616635';
?>
<div class="row" style="min-height: 300px;">
	<div class="col-md-9">
		<?php
$_from = $_smarty_tpl->tpl_vars['documents']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['item']->_loop = false;
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
foreach ($_from as $_smarty_tpl->tpl_vars['i']->value => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
$foreach_item_Sav = $_smarty_tpl->tpl_vars['item'];
?>
		<div class="media">
		  <div class="media-left">
		    <img src="https://vcdn.tikicdn.com/cache/415x415/media/catalog/product/l/o/lop%205.u335.d20160423.t195730.jpg" class="media-object" style="width:60px">
		  </div>
		  <div class="media-body">
		    <h4 class="media-heading"><?php echo $_smarty_tpl->tpl_vars['item']->value['classname'];?>
</h4>
		    <p>
		    	Tài liệu môn <?php echo $_smarty_tpl->tpl_vars['subject']->value->subject;?>
 <br /> 
		    	<small><a href="<?php echo base_url();?>
tai-lieu/<?php echo $_smarty_tpl->tpl_vars['subject']->value->friendly;?>
/<?php echo $_smarty_tpl->tpl_vars['item']->value['classname'];?>
">Xem chi tiết...</a></small>
	    	</p>
		  </div>
		</div>
		<?php
$_smarty_tpl->tpl_vars['item'] = $foreach_item_Sav;
}
?>
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
	</div>
</div><?php }
}
?>