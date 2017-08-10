<?php /* Smarty version 3.1.27, created on 2017-08-10 16:49:42
         compiled from "/var/www/html/cnc/application/views/frontend/layouts/logo.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:751120915598c2c36ac9bb0_37935448%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f84a9d80234af4d379deddbac1176fd8820fb41d' => 
    array (
      0 => '/var/www/html/cnc/application/views/frontend/layouts/logo.tpl',
      1 => 1502358015,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '751120915598c2c36ac9bb0_37935448',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598c2c36acb2f8_15612221',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598c2c36acb2f8_15612221')) {
function content_598c2c36acb2f8_15612221 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '751120915598c2c36ac9bb0_37935448';
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