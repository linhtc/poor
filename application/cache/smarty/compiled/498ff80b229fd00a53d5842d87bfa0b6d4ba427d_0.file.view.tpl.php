<?php /* Smarty version 3.1.27, created on 2017-08-21 21:54:02
         compiled from "/var/www/html/poor/application/views/frontend/home/view.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1167200906599af40aba6fd3_59793596%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '498ff80b229fd00a53d5842d87bfa0b6d4ba427d' => 
    array (
      0 => '/var/www/html/poor/application/views/frontend/home/view.tpl',
      1 => 1503325479,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1167200906599af40aba6fd3_59793596',
  'variables' => 
  array (
    'list' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_599af40abaf690_64834230',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_599af40abaf690_64834230')) {
function content_599af40abaf690_64834230 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1167200906599af40aba6fd3_59793596';
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