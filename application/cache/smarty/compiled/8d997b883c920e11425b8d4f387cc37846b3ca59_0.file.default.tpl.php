<?php /* Smarty version 3.1.27, created on 2017-08-31 00:08:31
         compiled from "/var/www/html/poor/application/views/frontend/layouts/default.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1206211159a6f10fb7c7e8_74014270%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8d997b883c920e11425b8d4f387cc37846b3ca59' => 
    array (
      0 => '/var/www/html/poor/application/views/frontend/layouts/default.tpl',
      1 => 1504014581,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1206211159a6f10fb7c7e8_74014270',
  'variables' => 
  array (
    'listCss' => 0,
    'content' => 0,
    'listJs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59a6f10fb84f49_93757528',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59a6f10fb84f49_93757528')) {
function content_59a6f10fb84f49_93757528 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1206211159a6f10fb7c7e8_74014270';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
<head>
	<title>Gia sư Sáng Tạo Việt</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="http://giasunhanvan.vn/templates/images/favicon.png" rel="shortcut icon" type="image/x-icon" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"><?php echo '</script'; ?>
>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/css/style.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/css/responsive.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/css/custom.css" rel="stylesheet" />
	<?php echo $_smarty_tpl->tpl_vars['listCss']->value;?>

</head>

<body class="module">
	<div class="container">
		<?php echo $_smarty_tpl->getSubTemplate ('frontend/layouts/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

		<?php echo $_smarty_tpl->getSubTemplate ('frontend/layouts/menu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

		<div class="clearfix"></div>
		<section class="include">
			<ul class="breadcrumb" style="display: none;">
				<li><a href="<?php echo base_url();?>
" title="Trang chủ">Trang chủ</a></li>
				<li><a href="<?php echo base_url();?>
lien-he" title="Liên hệ">Liên hệ</a></li>
			</ul>
			<div class="clearfix"></div>
			<div class="body">
				<div style="padding: 20px 0px;">
					<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

				</div>
			</div>
			<!-- Content must start with row class -->
		</section>
		<div class="clearfix"></div>
		<?php echo $_smarty_tpl->getSubTemplate ('frontend/layouts/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

	</div>
	<?php echo $_smarty_tpl->tpl_vars['listJs']->value;?>

</body>
</html>

<?php }
}
?>