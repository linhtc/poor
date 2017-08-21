<?php /* Smarty version 3.1.27, created on 2017-08-11 23:07:32
         compiled from "/var/www/html/poor/stv/application/views/frontend/layouts/default.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:81216371598dd644825330_93430264%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c6b9959769f658ddaf3b7257bbc63f341a6387e5' => 
    array (
      0 => '/var/www/html/poor/stv/application/views/frontend/layouts/default.tpl',
      1 => 1502465461,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '81216371598dd644825330_93430264',
  'variables' => 
  array (
    'title' => 0,
    'listCss' => 0,
    'content' => 0,
    'listJs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598dd64483c901_37435918',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598dd64483c901_37435918')) {
function content_598dd64483c901_37435918 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '81216371598dd644825330_93430264';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<base href="<?php echo base_url();?>
" />
	<link rel="canonical" href="<?php echo base_url();?>
" />	
    <link href="http://giasunhanvan.vn/templates/images/favicon.png" rel="shortcut icon" type="image/x-icon" />
	<title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="<?php echo base_url();?>
static/default/frontend/extra/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/js/jquery-1.11.0.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/js/detect.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/extra/bootstrap/bootstrap.min.js"><?php echo '</script'; ?>
>
	<link href="<?php echo base_url();?>
static/default/frontend/fonts/font-awesome/font-awesome.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/fonts/font_entypo/entypo.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/extra/owlcarousel/owl.carousel.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/extra/owlcarousel/owl.carousel.js"><?php echo '</script'; ?>
>
	<link href="http://giasunhanvan.vn/templates/extra/wow/animate.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="http://giasunhanvan.vn/templates/extra/wow/wow.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/extra/jcarousellite/jquery.jcarousellite.js"><?php echo '</script'; ?>
>
	<link href="<?php echo base_url();?>
static/default/frontend/css/style.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/css/module.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/css/responsive.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>
static/default/frontend/css/responsive_module.css" rel="stylesheet" />
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/js/home.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/frontend/js/module.js"><?php echo '</script'; ?>
>
	<?php echo $_smarty_tpl->tpl_vars['listCss']->value;?>

<style>
	.row-header{
    	background: #01315A;
	    margin: 0px;
	    padding: 20px 0px;
	    color: #FFF;
    }
    
    .header-left{
    	background-image: url("http://giasusangtaoviet.edu.vn/wp-content/uploads/2017/07/Logo-1-e1499270184520.png");
    	background-size: contain;
    	background-repeat: no-repeat;
    	background-position: center;
    	width: 100%;
    	height: 100px;
    }
    
    .header-center h2{
    	margin-top: 10px;
    }
    
    .header-right{
    	/* background-image: url("https://api.asm.skype.com/v1/objects/0-sa-d1-9a1613aefa56b9676b8a8dcccd8a673f/views/imgpsh_fullsize"); */
    	background-image: url("<?php echo base_url();?>
media/images/header/teacher.png");
    	background-size: contain;
    	background-repeat: no-repeat;
    	background-position: center;
    	width: 100%;
    	height: 100px;
    }
</style>
</head>
<body class="module">
<div class="fback-top"><i class="fa fa-angle-double-up"></i></div>
<div class="container">
<?php echo $_smarty_tpl->getSubTemplate ('frontend/layouts/header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

<div class="clearfix"></div>
<?php echo $_smarty_tpl->getSubTemplate ('frontend/layouts/menu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

<div class="clearfix"></div>
<section class="include">
	<?php echo $_smarty_tpl->getSubTemplate ('frontend/layouts/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

	<div class="clearfix"></div>
	<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

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