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
	    
	    {if $uuid != 'contact'}
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
	    {/if}
	    
	    <style type="text/css">
	    #menu ul {
    opacity: 0;
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
    background-image: url({base_url()}media/images/arrow_top.png);
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
	<body id="{$uuid}">
		{include file='frontend/layouts/menu.tpl'}
		
		<panel id="panel">
			{include file='frontend/layouts/logo.tpl'}
			
			<content class="body-content">
				{$content}
			</content>
			
			{if $uuid != 'contact'}
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
			{/if}
			
			<div class="clear-fix"></div>
			
			
			
			{include file='frontend/layouts/footer.tpl'}
			<div class="loading"><div class="loading-badge"><div class="loading-spinner"></div></div></div>		
		</panel>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/slideout/0.1.9/slideout.min.js"></script>
	    
		{$listJs}
		
		
<script>
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
	    .css({ "visibility": "hidden" })
	    .position({
	    my: "left top",
	    at: "left bottom",
	    of: $menuButton
	});
	setTimeout(function(){
		$menuElement.css({ "opacity": 1 });;
	}, 10);
});
</script>

	</body>
</html>


