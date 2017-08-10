<?php /* Smarty version 3.1.27, created on 2017-08-10 20:15:36
         compiled from "/var/www/html/poor/cnc/application/views/frontend/layouts/logo.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:711478710598c5c78314813_33921893%%*/
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
  'nocache_hash' => '711478710598c5c78314813_33921893',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598c5c783162f2_40405867',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598c5c783162f2_40405867')) {
function content_598c5c783162f2_40405867 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '711478710598c5c78314813_33921893';
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