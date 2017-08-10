<?php /* Smarty version 3.1.27, created on 2017-08-10 19:55:38
         compiled from "/var/www/html/poor/cnc/application/views/frontend/layouts/logo.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:148681623598c57ca2ebd37_32129780%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9a44e3f57f8a470f5396c304f692552259266d44' => 
    array (
      0 => '/var/www/html/poor/cnc/application/views/frontend/layouts/logo.tpl',
      1 => 1502367679,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '148681623598c57ca2ebd37_32129780',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598c57ca2ede15_26748334',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598c57ca2ede15_26748334')) {
function content_598c57ca2ede15_26748334 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '148681623598c57ca2ebd37_32129780';
?>
<header>
	<logo>
		<a href="<?php echo base_url();?>
home"><img src="<?php echo base_url();?>
/media/images/logo/a.png"></a>
		<div id="vertical-line"></div>
		<span id="slogan">technology for life</span>
	</logo>
    <span class="lnr lnr-menu toggle-button"></span>			
</header><?php }
}
?>