<?php /* Smarty version 3.1.27, created on 2017-08-10 22:52:11
         compiled from "/var/www/html/poor/stv/application/views/frontend/home/view.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1962227364598c812b9b1522_23001963%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '076cbcfce4daf75f3633a985515a64bdf7a3c55c' => 
    array (
      0 => '/var/www/html/poor/stv/application/views/frontend/home/view.tpl',
      1 => 1502202475,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1962227364598c812b9b1522_23001963',
  'variables' => 
  array (
    'list' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598c812b9b6d84_45289205',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598c812b9b6d84_45289205')) {
function content_598c812b9b6d84_45289205 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1962227364598c812b9b1522_23001963';
?>
<div id="slides">
	<ul class="slides-container">
		<?php if (!empty($_smarty_tpl->tpl_vars['list']->value)) {?>
		    <?php
$_from = $_smarty_tpl->tpl_vars['list']->value;
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
		    	<li><img src="<?php echo $_smarty_tpl->tpl_vars['item']->value['photo'];?>
">
					<p class="slides-caption"><?php echo $_smarty_tpl->tpl_vars['item']->value['caption'];?>
</p>
				</li>
			<?php
$_smarty_tpl->tpl_vars['item'] = $foreach_item_Sav;
}
?>
		<?php }?>					
	</ul>
</div><?php }
}
?>