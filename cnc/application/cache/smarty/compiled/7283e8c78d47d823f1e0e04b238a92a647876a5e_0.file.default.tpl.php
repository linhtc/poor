<?php /* Smarty version 3.1.27, created on 2017-08-10 19:55:38
         compiled from "/var/www/html/poor/cnc/application/views/frontend/layouts/default.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:561997266598c57ca2c9b89_17123142%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7283e8c78d47d823f1e0e04b238a92a647876a5e' => 
    array (
      0 => '/var/www/html/poor/cnc/application/views/frontend/layouts/default.tpl',
      1 => 1502369699,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '561997266598c57ca2c9b89_17123142',
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
  'unifunc' => 'content_598c57ca2d2a65_57305682',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598c57ca2d2a65_57305682')) {
function content_598c57ca2d2a65_57305682 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '561997266598c57ca2c9b89_17123142';
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
	    
	    <style type="text/css">
	    #menu ul {
    margin: 0;
    padding: 0;
    right: 0px;
    top: 22px;
    position: absolute;
    background: #fff;
    border-radius: 5px;
    box-shadow: 0 8px 13px rgba(0,0,0,.36), 0 0 0 1px rgba(0,0,0,.06);
    width: 123px;
    box-sizing: border-box;
    -webkit-transition: all .3s cubic-bezier(.34,1.61,.7,1);
    transition: all .3s cubic-bezier(.34,1.61,.7,1);
    -webkit-transform-origin: 39px -10px;
    transform-origin: 39px -10px;
    -webkit-transform: scale(1);
    transform: scale(1);
    opacity: 1;
    -webkit-filter: none;
    -moz-filter: none;
    -ms-filter: none;
    -o-filter: none;
    filter: none;
}

#menu ul:before {
    content: "";
    position: absolute;
    display: block;
    width: 37px;
    height: 12px;
    top: -12px;
    right: 4px;
    background-image: url(<?php echo base_url();?>
media/images/arrow_top.png);
}

#menu ul li {
    display: block;
    margin: 0;
        padding: 5px 0px;
}

#menu ul li a{
    padding: 15px;
}
	    </style>
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

		
		
<?php echo '<script'; ?>
>
$( document ).ready(function() {
	var $menuButton = $("#to-language");
	var $menuElement = $("#menuElement");

	$menuButton
	    .click(function (event) {
	    $(document).one("click", function () {
	        $menuElement.css("visibility", "hidden");
	    });

	    $menuElement.css("visibility", "visible");
	    event.stopPropagation();
	});

	$menuElement
	    .css("visibility", "hidden")
	    .position({
	    my: "left top",
	    at: "left bottom",
	    of: $menuButton
	});
});
<?php echo '</script'; ?>
>

	</body>
</html>


<?php }
}
?>