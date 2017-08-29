<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
<head>
	<title>Gia sư Sáng Tạo Việt</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="http://giasunhanvan.vn/templates/images/favicon.png" rel="shortcut icon" type="image/x-icon" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/css/style.css" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/css/responsive.css" rel="stylesheet" />
	<link href="{base_url()}static/default/frontend/css/custom.css" rel="stylesheet" />
	{$listCss}
</head>

<body class="module">
	<div class="container">
		{include file='frontend/layouts/header.tpl'}
		{include file='frontend/layouts/menu.tpl'}
		<div class="clearfix"></div>
		<section class="include">
			<ul class="breadcrumb" style="display: none;">
				<li><a href="{base_url()}" title="Trang chủ">Trang chủ</a></li>
				<li><a href="{base_url()}lien-he" title="Liên hệ">Liên hệ</a></li>
			</ul>
			<div class="clearfix"></div>
			<div class="body">
				<div style="padding: 20px 0px;">
					{$content}
				</div>
			</div>
			<!-- Content must start with row class -->
		</section>
		<div class="clearfix"></div>
		{include file='frontend/layouts/footer.tpl'}
	</div>
	{$listJs}
</body>
</html>

