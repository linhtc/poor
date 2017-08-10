<?php /* Smarty version 3.1.27, created on 2017-08-10 20:15:36
         compiled from "/var/www/html/poor/cnc/application/views/frontend/layouts/menu.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1963110996598c5c7830b7f2_05184543%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ebb55125df38612ae57015ec54c30cd99448a5dc' => 
    array (
      0 => '/var/www/html/poor/cnc/application/views/frontend/layouts/menu.tpl',
      1 => 1502369733,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1963110996598c5c7830b7f2_05184543',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598c5c78312935_50257293',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598c5c78312935_50257293')) {
function content_598c5c78312935_50257293 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1963110996598c5c7830b7f2_05184543';
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
	<li class="menu-item" id="to-language">
		<a href="#"><img alt="Vi" src="<?php echo base_url();?>
media/images/nations/vn.png"> </a>
		<ul style="z-index: 9999999;position: absolute;" id="menuElement">
		    <li>
		    	<a href="#">Tiếng Việt</a>
		    </li>
		    <li>
		    	<a href="#">English</a>
		    </li>
		</ul>
	</li>
</ul>


<?php }
}
?>