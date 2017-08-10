<?php /* Smarty version 3.1.27, created on 2017-08-10 16:49:42
         compiled from "/var/www/html/cnc/application/views/frontend/layouts/menu.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1065417796598c2c36ac5af7_93815949%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6bccba00d2ccfe58e14a0e1bbe3fa1a421f91524' => 
    array (
      0 => '/var/www/html/cnc/application/views/frontend/layouts/menu.tpl',
      1 => 1502357489,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1065417796598c2c36ac5af7_93815949',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598c2c36ac8635_53400048',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598c2c36ac8635_53400048')) {
function content_598c2c36ac8635_53400048 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1065417796598c2c36ac5af7_93815949';
?>
<ul id="menu">
	<li class="menu-item" id="to-home"><a href="<?php echo base_url();?>
home">Home</a></li>
	<li class="menu-item" id="to-machining"><a href="<?php echo base_url();?>
machining">Precision Machining</a></li>
	<li class="menu-item" id="to-mold"><a href="<?php echo base_url();?>
mold">Mold & Part</a></li>
	<li class="menu-item" id="to-contact"><a href="<?php echo base_url();?>
contact">Contact Us</a></li>
	<li class="menu-item" id="to-language"><a href="#"><img alt="Vi" src="<?php echo base_url();?>
media/images/nations/vn.png"> </a></li>
</ul><?php }
}
?>