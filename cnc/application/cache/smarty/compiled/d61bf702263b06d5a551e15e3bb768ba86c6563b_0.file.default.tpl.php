<?php /* Smarty version 3.1.27, created on 2017-08-10 16:49:42
         compiled from "/var/www/html/cnc/application/views/frontend/layouts/default.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1139155414598c2c36abd5b6_27189135%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd61bf702263b06d5a551e15e3bb768ba86c6563b' => 
    array (
      0 => '/var/www/html/cnc/application/views/frontend/layouts/default.tpl',
      1 => 1502358580,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1139155414598c2c36abd5b6_27189135',
  'variables' => 
  array (
    'title' => 0,
    'listCss' => 0,
    'uuid' => 0,
    'content' => 0,
    'listJs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598c2c36ac3e81_74133448',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598c2c36ac3e81_74133448')) {
function content_598c2c36ac3e81_74133448 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1139155414598c2c36abd5b6_27189135';
?>
<!DOCTYPE html>
<html>
	<head>
		<title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	    <meta name="description" content="CNC Technology">
	    <meta name="keywords" content="CAD/CAM/CNC, Machining, Precision Machining, Mold and Die, Spare Parts, Jigs and Fixtures, JETRO, VCCI, Vietnam FDI, Japan Vietnam, Vietnam Support Industry">
		<link rel="icon" href="http://www.cnctech.com.vn/images/favicon.ico" type="image/x-icon">
	    <link href='https://fonts.googleapis.com/css?family=Open+Sans&subset=latin,vietnamese' rel='stylesheet' type='text/css'>
	    <link rel="stylesheet" href="<?php echo base_url();?>
static/default/frontend/css/cnctech.css">
	    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
	    
	    <?php echo $_smarty_tpl->tpl_vars['listCss']->value;?>

	    
	    <?php if ($_smarty_tpl->tpl_vars['uuid']->value != 'contact') {?>
	    <style>
	    	.menu-left{
	    		width: 20%;
	    		top: 0;
	    		left: 0;
	    		float: left;
	    	}
	    	
	    	.body-content{
	    		width: 80%;
	    		float: right;
	    	}
	    	
	    	.clear-fix{
	    		clear: both;
	    	}
	    	
	    	.menu-left .left_box{
	    		padding: 10px;
	    	}
	    	.menu-left .left_box h2{
	    		text-align: center;
    			margin-top: 20px;
	    	}
	    	.menu-left .left_box .sodt{
	    		text-align: center;
    			margin-top: 20px;
	    	}
	    	.menu-left .left_box .hotl{
	    		text-align: center;
    			margin-top: 20px;
	    	}
	    	.menu-left .left_box .hotro{
	    		text-align: center;
    			margin-top: 20px;
	    	}
	    	.menu-left .left_box .hotro p{
	    		line-height: 20px;
	    	}
	    	
	    	@media (max-width: 880px){
	    		.menu-left{
		    		width: 100%;
		    		top: 0;
		    		left: 0;
		    		float: right;
		    	}
		    	
		    	.body-content{
		    		width: 100%;
		    		float: left;
		    	}
	    	}
	    </style>
	    <?php }?>
	</head>
	<body id="<?php echo $_smarty_tpl->tpl_vars['uuid']->value;?>
">
		<?php echo $_smarty_tpl->getSubTemplate ('frontend/layouts/menu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

		
		<panel id="panel">
			<?php echo $_smarty_tpl->getSubTemplate ('frontend/layouts/logo.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

			
			<content class="body-content">
				<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

			</content>
			
			<?php if ($_smarty_tpl->tpl_vars['uuid']->value != 'contact') {?>
			<div class="menu-left">
			    <!-- Hỗ trợ trực tuyến -->
			     <div class="left_box">
			        <h2>HỖ TRỢ TRỰC TUYẾN</h2>
			       <div class="hotl">
		                <span class="sodt" style="color:#ef5a23; font-style:italic; font-size:20px;">098.44.99.008</span>
		            </div>
		            
			        <h2 style="margin-top:40px;">NHÂN VIÊN TƯ VẤN</h2>
			        <div class="hotro">
			             <p class="tuvan_nv red">P. Kinh Doanh (Mr. Thắng)</p>  
			             <p class="tuvan_nv red">Điện thoại: 098 44 99 008</p>     
			        </div>
			        <div class="hotro">
			             <p class="tuvan_nv red">P. Kỹ Thuật (Mr. Thắng)</p>  
			             <p class="tuvan_nv red">Điện thoại: 098 44 99 008</p>     
			        </div>
			        <div class="hotro">
			             <p class="tuvan_nv red">P. Mua hàng (Mr. Thắng)</p>  
			             <p class="tuvan_nv red">Điện thoại: 098 44 99 008</p>     
			        </div>
			        
			        <h2 style="margin-top:40px;">LIÊN HỆ</h2>
			        <div class="hotro">
			             <p class="tuvan_nv red">CNC PRECISION</p>
			             <p class="tuvan_nv red">Dĩ An, Bình Dương</p>
			             <p class="tuvan_nv red">contact@cncprecision.com</p>
			        </div>
			    </div>
			</div>
			<?php }?>
			
			<div class="clear-fix"></div>
			<?php echo $_smarty_tpl->getSubTemplate ('frontend/layouts/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

			<div class="loading"><div class="loading-badge"><div class="loading-spinner"></div></div></div>		
		</panel>
		<?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"><?php echo '</script'; ?>
>
	    <?php echo '<script'; ?>
 src="https://cdnjs.cloudflare.com/ajax/libs/slideout/0.1.9/slideout.min.js"><?php echo '</script'; ?>
>
	    
		<?php echo $_smarty_tpl->tpl_vars['listJs']->value;?>

	</body>
</html>
<?php }
}
?>