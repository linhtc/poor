function ResizeWindows() {
	var Xwidth=$(window).width();
	var Yheight=$(window).height();
	
	if($('.item-style1').length) {
		var h = 0;
		$('.item-style1 .body').css('height','');
		$('.item-style1').each(function() {
			var i = $('.body',this).innerHeight();
			if(i>h) h=i;
		});
		$('.item-style1 .body').css('height',h);
	}
	
}

$(document).ready(function() {
	
	
	$(window).on('resize load',function() {
		ResizeWindows();
	});
	

	/*$('.datepicker').datepicker({
		format: 'dd-mm-yyyy',
		autoclose: true,
	}).on('changeDate', function(e) {
		$(this).valid(); 
	});	
	
	$(".select2").select2();
	$("select").on("select2:close", function (e) {  
		$(this).valid(); 
	});	
		
	$('.icheck').iCheck({
		checkboxClass: 'icheckbox_square-blue',
		radioClass: 'iradio_square-blue',
		increaseArea: '20%'
	}).on('ifChanged', function(e) {
		$(this).valid(); 
	});*/	
	
	$('ul.navbar-nav > li > a').on('click',function() {
		var Xwidth=$(window).width();
		if(Xwidth>990) {
			var url = $(this).attr('href');
			window.location.href = url;
		}	
	});
	
	if($('.slide-adv').length) {
		var lsjQuery = jQuery;
		var curSkin = 'v5';	
		lsjQuery(document).ready(function() {
			if (typeof lsjQuery.fn.layerSlider == "undefined") {
				lsShowNotice('layerslider_1', 'jquery');
			} else {
				lsjQuery("#layerslider_1").layerSlider({
					startInViewport: false,
					pauseOnHover: false,
					forceLoopNum: false,
					autoPlayVideos: false,
					skinsPath: './templates/extra/layerslider/skins/',
					skin: 'v5',
					thumbnailNavigation: 'hover'
				})
			}
		});		
		
	}
	
	$('.select-link').on('change',function() {
		var link = $(this).val();
		if(link!='') {
			window.location.href = link;
		}
	});	
		
			
	if($('.owl-pro-home').length) {
		$('.owl-pro-home').owlCarousel({
			items : 4,
			itemsDesktop : [1199, 4],
			itemsDesktopSmall : [979, 3],
			itemsTablet : [768, 2],
			itemsTabletSmall : false,
			itemsMobile : [479, 1],
			navigation : true,
			navigationText : ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			pagination:false,
			rewindNav:false,
			autoHeight : false,
			autoPlay:true,
			afterAction: function(){
			
			}
		});	
	}

			
})