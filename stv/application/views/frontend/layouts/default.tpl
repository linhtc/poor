<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<base href="{base_url()}" />
	<link rel="canonical" href="{base_url()}" />	
    <link href="http://giasunhanvan.vn/templates/images/favicon.png" rel="shortcut icon" type="image/x-icon" />
	<title>{$title}</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="{base_url()}static/default/frontend/extra/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<script type="text/javascript" src="{base_url()}static/default/frontend/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="{base_url()}static/default/frontend/js/detect.js"></script>
	<script type="text/javascript" src="{base_url()}static/default/frontend/extra/bootstrap/bootstrap.min.js"></script>
	<link href="{base_url()}static/default/frontend/fonts/font-awesome/font-awesome.min.css" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/fonts/font_entypo/entypo.css" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/extra/owlcarousel/owl.carousel.css" rel="stylesheet" />
	<script type="text/javascript" src="{base_url()}static/default/frontend/extra/owlcarousel/owl.carousel.js"></script>
	<link href="http://giasunhanvan.vn/templates/extra/wow/animate.css" rel="stylesheet" />
	<script type="text/javascript" src="http://giasunhanvan.vn/templates/extra/wow/wow.min.js"></script>
	<script type="text/javascript" src="{base_url()}static/default/frontend/extra/jcarousellite/jquery.jcarousellite.js"></script>
	<link href="{base_url()}static/default/frontend/css/style.css" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/css/module.css" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/css/responsive.css" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/css/responsive_module.css" rel="stylesheet" />
	<script type="text/javascript" src="{base_url()}static/default/frontend/js/home.js"></script>
	<script type="text/javascript" src="{base_url()}static/default/frontend/js/module.js"></script>
	{$listCss}
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
    	background-image: url("{base_url()}media/images/header/teacher.png");
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
{include file='frontend/layouts/header.tpl'}
<div class="clearfix"></div>
{include file='frontend/layouts/menu.tpl'}
<div class="clearfix"></div>
<section class="include">
	{include file='frontend/layouts/breadcrumb.tpl'}
	<div class="clearfix"></div>
	{$content}
</section>
<div class="clearfix"></div>
{include file='frontend/layouts/footer.tpl'}
</div>
{$listJs}
</body>
</html>

