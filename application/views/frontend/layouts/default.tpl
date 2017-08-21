<!DOCTYPE html>
<html>
	<head>
		<title>{$title}</title>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	    <meta name="description" content="CNC Technology">
	    <meta name="keywords" content="CAD/CAM/CNC, Machining, Precision Machining, Mold and Die, Spare Parts, Jigs and Fixtures, JETRO, VCCI, Vietnam FDI, Japan Vietnam, Vietnam Support Industry">
		<link rel="icon" href="http://www.cnctech.com.vn/images/favicon.ico" type="image/x-icon">
	    <link href='https://fonts.googleapis.com/css?family=Open+Sans&subset=latin,vietnamese' rel='stylesheet' type='text/css'>
	    <link rel="stylesheet" href="{base_url()}static/default/frontend/css/cnctech.css">
	    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
	    {$listCss}
	</head>
	<body id="{$uuid}">
		{include file='frontend/layouts/menu.tpl'}
		<panel id="panel">
			{include file='frontend/layouts/logo.tpl'}
			<content>
				{$content}
			</content>
			{include file='frontend/layouts/footer.tpl'}
			<div class="loading"><div class="loading-badge"><div class="loading-spinner"></div></div></div>		
		</panel>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/slideout/0.1.9/slideout.min.js"></script>
		{$listJs}
	</body>
</html>