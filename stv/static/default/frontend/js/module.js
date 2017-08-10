function ResizeModule() {

	if($('.img-detail-pro').length){
		var Wdetail=$('.owl-pro-detail').width();
		var Hdetail=Wdetail/1.333;
		$('.owl-pro-detail .img, .owl-pro-detail .img a').height(Hdetail);
		$('.owl-pro-detail .img img').css({'max-height':Hdetail});
		/*resize detail thumb*/
		var Wthumb=$('.owl-pro-detail-thumb .img').width();
		var Hthumb=Wthumb/1.333;
		$('.owl-pro-detail-thumb .img, .owl-pro-detail-thumb .img a').height(Hthumb);
		$('.owl-pro-detail-thumb .img img').css({'max-height':Hthumb});	
	}
	
	if($('.box-detail-gs.fetch').length){
		$('.box-detail-gs.fetch').attr('style','');
		var h=0;
		$('.box-detail-gs.fetch').each(function() {
			var i = $(this).height();
			if(i>h) h=i;
		});
		$('.box-detail-gs.fetch').height(h);
	}	
}

function clickThumb(img,thumb) {
	thumb.on("click", ".owl-item", function(e){
		e.preventDefault();
		var number = $(this).data("owlItem");
		img.trigger("owl.goTo",number);
	});
}


function syncPosition(current,thumb) {
	
	if(thumb != undefined) {
		thumb.find(".owl-item").removeClass("synced").eq(current).addClass("synced");
		if(thumb.data("owlCarousel") !== undefined){
			center(current,thumb)
		}
	}
}


function center(number,thumb){
	var sync2visible = thumb.data("owlCarousel").owl.visibleItems;
	var num = number;
	var found = false;
	for(var i in sync2visible){
		if(num === sync2visible[i]){
			var found = true;
		}
	}

	if(found===false){
		if(num>sync2visible[sync2visible.length-1]){
			thumb.trigger("owl.goTo", num - sync2visible.length+2)
		}else{
			if(num - 1 === -1){
				num = 0;
			}
			thumb.trigger("owl.goTo", num);
		}
	} else if(num === sync2visible[sync2visible.length-1]){
		thumb.trigger("owl.goTo", sync2visible[1])
	} else if(num === sync2visible[0]){
		thumb.trigger("owl.goTo", num-1);
	}
}

function stripUnicode(slug,target) {
	slug = slug.toLowerCase(); 
	slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
	slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
	slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
	slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
	slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
	slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
	slug = slug.replace(/đ/gi, 'd');
	slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
	slug = slug.replace(/ /gi, "-");
	slug = slug.replace(/\-\-\-\-\-/gi, '-');
	slug = slug.replace(/\-\-\-\-/gi, '-');
	slug = slug.replace(/\-\-\-/gi, '-');
	slug = slug.replace(/\-\-/gi, '-');
	slug = '@' + slug + '@';
	slug = slug.replace(/\@\-|\-\@|\@/gi, '');

	$(target).val(slug);
}



$(document).ready(function() {

	$(window).on('resize load',function() {
		ResizeModule();
	});
	
	$(window).scroll(function () {
		if ($(this).scrollTop() > 300) {
			$('.fback-top').fadeIn();
		} else {
			$('.fback-top').fadeOut();
		}
	});


	$('.fback-top').click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 500);
		return false;
	});
	
//	$('.fancybox').fancybox();


	if($("#form-shopping").length) {
		var error1=$('#form-shopping #ten').attr('data-error');
		var error2=$('#form-shopping #email').attr('data-error');
		var error3=$('#form-shopping #diachi').attr('data-error');
		var error4=$('#form-shopping #dienthoai').attr('data-error');
		
		$("#form-shopping").validate({
			rules: {
				ten: "required",				
				email: {
					required: true,
					email: true
				},
				diachi: "required",
				dienthoai: "required",
			},
			messages: {
				ten: error1,
				email: error2,
				diachi: error3,
				dienthoai: error4,
			}
		});	
	}

	
	if($("#form-contact").length) {
		var error1=$('#form-contact #ho_ten').attr('data-error');
		var error2=$('#form-contact #so_dien_thoai').attr('data-error');
		var error3=$('#form-contact #dia_chi').attr('data-error');
		var error4=$('#form-contact #email').attr('data-error');
		var error5=$('#form-contact #noi_dung').attr('data-error');
		var error6=$('#form-contact #captcha').attr('data-error');
		
		$("#form-contact").validate({
			rules: {
				ho_ten: "required",
				so_dien_thoai: "required",
				dia_chi: "required",
				email: {
					required: true,
					email: true
				},
				noi_dung: "required",
				captcha: "required",

			},
			messages: {
				ho_ten: error1,
				so_dien_thoai: error2,
				dia_chi: error3,
				email: error4,
				noi_dung: error5,
				captcha: error6,
			}
		});	
	}
	

	
	if($("#form-question").length) {
		
		var error1=$('#form-question #ten').attr('data-error');
		var error2=$('#form-question #cau_hoi').attr('data-error');
		var error3=$('#form-question #captcha').attr('data-error');
		
		$("#form-question").validate({
			rules: {
				ten: "required",
				cau_hoi: "required",
				captcha: "required",

			},
			messages: {
				ten: error1,
				cau_hoi: error2,
				captcha: error3,
			}
		});	
	}
	
	
	if($('.img-detail-pro').length) {
		var sync1 = $(".owl-pro-detail");
		var sync2 = $(".owl-pro-detail-thumb");

		sync1.owlCarousel({
			singleItem : true,
			slideSpeed : 1000,
			navigation : true,
			autoPlay:true,
			navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			pagination:false,
			afterAction : function() {
				syncPosition(this.currentItem,sync2);
			},
			responsiveRefreshRate : 200,
		});



		sync2.owlCarousel({
			items : 5,
			itemsDesktop      : [1199,5],
			itemsDesktopSmall     : [979,5],
			itemsTablet       : [768,5],
			itemsMobile       : [479,3],
			pagination:false,
			responsiveRefreshRate : 100,
			afterInit : function(el){
				el.find(".owl-item").eq(0).addClass("synced");
			},
			afterAction: function(){
				setTimeout(function() { ResizeModule() },200);	
			}
		});

		clickThumb(sync1,sync2);	
	
	}



	if($('.owl-detail-content').length) {
		$('.owl-detail-content').owlCarousel({
			items : 4,
			itemsDesktop : [1199, 4],
			itemsDesktopSmall : [979, 4],
			itemsTablet : [768, 3],
			itemsTabletSmall : false,
			itemsMobile : [479, 2],
			navigation : true,
			navigationText : ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			pagination:false,
			rewindNav:true,
			autoPlay:true,
			autoHeight : true,
			afterAction: function(){
			
			}
		});	
	}
	

	if($(".form-ph").length) {

		$(".form-ph").validate({
			rules: {
				hoten: "required",
				diachi: "required",
				dienthoai: "required",
				email: {
					required: true,
					email: true
				},
				lop: "required",
				'monhoc[]': "required",
				soluong: "required",
				hocluc: "required",
				sobuoi: "required",
				thoigianhoc: "required",
				trinhdo: "required",
				gioitinh: "required",
			},
			messages: {
				hoten: '',
				diachi: '',
				dienthoai: '',
				email: '',
				lop: '',
				'monhoc[]': '',
				soluong: '',
				hocluc: '',
				sobuoi: '',
				thoigianhoc: '',
				trinhdo: '',
				gioitinh: '',
			},
			highlight : function (element) {
				$(element).closest('.form-group').addClass('has-error');
			},
			unhighlight : function (element) {
				$(element).closest('.form-group').removeClass('has-error');
			},
			submitHandler : function(form) {	
				$.ajax({
					url: './sources/ajax.php',
					type: 'post',
					data: $(form).serialize() + "&do=ph_register",
					success: function(data) {
						if(data=='ok') {
							swal({   
							title: "Đăng ký thành công!",   
							text: "Chúng tôi sẽ liên lạc phụ huynh trong thời gian sớm nhất.",   
							type: "success",   
							//showCancelButton: true,   
							confirmButtonColor: "#5cb85c",   
							confirmButtonText: "Ok",   
							closeOnConfirm: false }, function(){   
								location.reload();
							});
						}
						else {
							alert('loi');
						}
					}  				
				});				
			}			
		});
		

	}
	
	
	if($(".form-gs").length) {

		$(".form-gs").validate({
			rules: {
				hoten: "required",
				ngay: "required",
				thang: "required",
				nam: "required",
				nguyenquan: "required",
				diachi: "required",
				dienthoai:{
					required: true,
					number: true,
					minlength: 9,
					maxlength: 12,
					remote: {
						url: "./sources/ajax.php",
						type: "post",
						data: {
							dienthoai: function() {
								return $('.form-gs #dienthoai').val();
							},
							'do' :'check_phone_gs',
						}	
					}
				},
				email: {
					required: true,
					email: true
				},
				file: "required",
				truong: "required",
				nganhhoc: "required",
				namtotnghiep: "required",
				trinhdo: "required",
				gioitinh: "required",
				uudiem: "required",
				'lop[]': "required",
				'mon[]': "required",
				tinhthanh: "required",
				'khuvuc[]': "required",
				'thoigianday[]': "required",
				luongtoithieu:{
					required: true,
					number: true
				},
				
			},
			messages: {
				hoten: '',
				ngay: '',
				thang: '',
				nam: '',
				nguyenquan: '',
				diachi: '',
				dienthoai: {
					required: "",
					number: "Nhập số điện thoại",
					minlength: "Ít nhất 9 số",
					maxlength: "Nhiều nhất 12 số",
					remote: "Số điện thoại đã tồn tại"
				},
				email: '',
				file: '',
				truong: '',
				nganhhoc: '',
				namtotnghiep: '',
				trinhdo: '',
				gioitinh: '',
				uudiem: '',
				'lop[]': '',
				'mon[]': '',
				tinhthanh: '',
				'khuvuc[]': '',
				'thoigianday[]': '',
				luongtoithieu: '',
			},
			highlight : function (element) {
				$(element).closest('.form-group').addClass('has-error');
			},
			unhighlight : function (element) {
				$(element).closest('.form-group').removeClass('has-error');
			},
			submitHandler : function(form) {
				var fd = new FormData();
				var file_data = $('input[type="file"]')[0].files; // for multiple files
				for(var i = 0;i<file_data.length;i++){
					fd.append("file_"+i, file_data[i]);
				}
				var other_data = $('form').serializeArray();
					$.each(other_data,function(key,input){
					fd.append(input.name,input.value);
				});
				$.ajax({
					url: './sources/ajax.php',
					data: fd,
					contentType: false,
					processData: false,
					type: 'POST',
					success: function(data){
						if(data=='ok') {
							swal({   
							title: "Đăng ký thành công!",   
							text: "Tài khoản của bạn đã được đăng ký!",   
							type: "success",   
							//showCancelButton: true,   
							confirmButtonColor: "#5cb85c",   
							confirmButtonText: "Ok",   
							closeOnConfirm: false }, function(){   
								location.reload();
							});
						}
						else {
							alert("loi");
						}
					}
				});			
			}			
		});
		
		
		$('.form-gs #hoten, .form-gs #truong').on('blur',function() {
			var ten = $('.form-gs #hoten').val();
			var	truong = $('.form-gs #truong').val();
			var slug = "Gia sư " + ten + " " + truong;
			$('.form-gs #ten_vn').val(slug);
			stripUnicode(slug,'.form-gs #alias_vn');
		});
		
		$('.form-gs #tinhthanh').on('change',function() {
			var id = $(this).val();
			$.ajax({
				method: "POST",
				url: "./sources/ajax.php",
				data:{'id':id, 'do':'get_khuvuc'},
				success: function(data){
					$('.form-gs #khuvuc').html(data);
					$(".select2").select2();
				}
			});	
		})
		

	}
	
	
	
	// if($(".form-register-lop").length) {
	// 	$(".form-register-lop").validate({
	// 		rules: {
	// 			didong:{
	// 				required: true,
	// 				number: true,
	// 				minlength: 9,
	// 				maxlength: 12,
	// 			},
	// 			// email: {
	// 			// 	required: true,
	// 			// 	email: true
	// 			// },
	// 			// 'lop[]': "required",
	// 			// 'mon[]': "required",
	// 			// tinhthanh: "required",
	// 			// 'khuvuc[]': "required",
	// 			// 'thoigianday[]': "required",
	// 			// luongtoithieu:{
	// 			// 	required: true,
	// 			// 	number: true
	// 			// },			
	// 		},
	// 		messages: {
	// 			didong: {
	// 				required: "",
	// 				number: "Nhập số điện thoại",
	// 				minlength: "Ít nhất 9 số",
	// 				maxlength: "Nhiều nhất 12 số",
	// 				remote: "Số điện thoại đã tồn tại"
	// 			},
	// 			// email: '',
	// 			// 'lop[]': '',
	// 			// 'mon[]': '',
	// 			// tinhthanh: '',
	// 			// 'khuvuc[]': '',
	// 			// 'thoigianday[]': '',
	// 			// luongtoithieu: '',
	// 		},
	// 		highlight : function (element) {
	// 			$(element).closest('.form-group').addClass('has-error');
	// 		},
	// 		unhighlight : function (element) {
	// 			$(element).closest('.form-group').removeClass('has-error');
	// 		},
	// 		submitHandler : function(form) {
	// 			var fd = new FormData();
	// 			var file_data = $('input[type="file"]')[0].files; // for multiple files
	// 			for(var i = 0;i<file_data.length;i++){
	// 				fd.append("file_"+i, file_data[i]);
	// 			}
	// 			// fd.append("file_0", fileInputElement.files[0]);
	// 			var other_data = $('form').serializeArray();
	// 				$.each(other_data,function(key,input){
	// 				fd.append(input.name,input.value);
	// 			});
				
	// 			$.ajax({
	// 				url: './sources/ajax.php',
	// 				type: 'post',
	// 				processData: false,
	// 				data: fd,
	// 				success: function(data) {
	// 					if(data=='ok') {
	// 						swal({   
	// 						title: "Đăng ký thành công!",   
	// 						text: "Chúng tôi sẽ kiểm duyệt trong thời gian sớm nhất",   
	// 						type: "success",   
	// 						//showCancelButton: true,   
	// 						confirmButtonColor: "#5cb85c",   
	// 						confirmButtonText: "Ok",   
	// 						closeOnConfirm: false }, function(){   
	// 							location.reload();
	// 						});
	// 					}
	// 					else if(data=='error_user') {
	// 						sweetAlert("Số điện thoại không tồn tại!", "Vui lòng nhập đúng số điện thoại!", "error");
	// 					}
	// 					else if(data=='error_full') {
	// 						sweetAlert("Lớp đã đầy!", "Vui lòng chọn lớp khác!", "error");
	// 					}
	// 					else if(data=='error_trung') {
	// 						sweetAlert("Bạn đã đăng ký lớp này!", "Vui lòng chọn lớp khác!", "error");
	// 					}
	// 					else {
	// 						console.log(data);
	// 						sweetAlert("Lỗi đăng ký!", "", "error");
	// 					}
	// 				}  				
	// 			});
	// 		}			
	// 	});
	// }

	if($(".form-register-lop").length) {

		$(".form-register-lop").validate({
			rules: {
				hoten: "required",
				ngay: "required",
				thang: "required",
				nam: "required",
				nguyenquan: "required",
				diachi: "required",
				dienthoai:{
					required: true,
					number: true,
					minlength: 9,
					maxlength: 12,
					remote: {
						url: "./sources/ajax.php",
						type: "post",
						data: {
							dienthoai: function() {
								return $('.form-gs #dienthoai').val();
							},
							'do' :'check_phone_gs',
						}	
					}
				},
				email: {
					required: true,
					email: true
				},
				file: "required",
				'lop[]': "required",
				'mon[]': "required",
				tinhthanh: "required",
				'khuvuc[]': "required",
				'thoigianday[]': "required",
				luongtoithieu:{
					required: true,
					number: true
				},
				
			},
			messages: {
				hoten: '',
				ngay: '',
				thang: '',
				nam: '',
				nguyenquan: '',
				diachi: '',
				dienthoai: {
					required: "",
					number: "Nhập số điện thoại",
					minlength: "Ít nhất 9 số",
					maxlength: "Nhiều nhất 12 số",
					remote: "Số điện thoại đã tồn tại"
				},
				email: '',
				file: '',
				'lop[]': '',
				'mon[]': '',
				tinhthanh: '',
				'khuvuc[]': '',
				'thoigianday[]': '',
				luongtoithieu: '',
			},
			highlight : function (element) {
				$(element).closest('.form-group').addClass('has-error');
			},
			unhighlight : function (element) {
				$(element).closest('.form-group').removeClass('has-error');
			},
			submitHandler : function(form) {
				var fd = new FormData();
				var file_data = $('input[type="file"]')[0].files; // for multiple files
				for(var i = 0;i<file_data.length;i++){
					fd.append("file_"+i, file_data[i]);
				}
				var other_data = $('form').serializeArray();
					$.each(other_data,function(key,input){
					fd.append(input.name,input.value);
				});
				$.ajax({
					url: './sources/ajax.php',
					data: fd,
					contentType: false,
					processData: false,
					type: 'POST',
					success: function(data){
						console.log(data);
						if(data=='ok') {
							swal({   
							title: "Đăng ký thành công!",   
							text: "Tài khoản của bạn đã được đăng ký!",   
							type: "success",   
							//showCancelButton: true,   
							confirmButtonColor: "#5cb85c",   
							confirmButtonText: "Ok",   
							closeOnConfirm: false }, function(){   
								location.reload();
							});
						}
						else {
							alert("loi");
						}
					}
				});			
			}			
		});
	
	}
	
	$('.btn-choose-gs').on('click',function() {
		var id = $(this).parent().attr('data-id');
		$.ajax({
			url: './sources/ajax.php',
			type: 'post',
			data: {'id':id, 'do':'choose_gs'},
			dataType: "json",
			success: function(data) {
				if(data.html=='ok') {
					swal({   
					title: "Chọn thành công!",     
					type: "success",     
					confirmButtonColor: "#5cb85c",   
					confirmButtonText: "Ok",   
					closeOnConfirm: false }, function(){   
						window.location.href = data.redirect;
					});
				}
				else {
					sweetAlert("Chọn lỗi!", "", "error");
				}
			}  				
		});
	});
	
	
	$('.btn-xoa-chon').on('click',function() {
		var id = $(this).attr('data-id');

		$.ajax({
			url: './sources/ajax.php',
			type: 'post',
			data: {'id':id, 'do':'xoa_chon'},
			success: function(data) {
				if(data=='ok') {
					swal({   
					title: "Xóa thành công!",     
					type: "success",     
					confirmButtonColor: "#5cb85c",   
					confirmButtonText: "Ok",   
					closeOnConfirm: false }, function(){   
						location.reload();
					});
				}
				else {
					sweetAlert("Xóa lỗi!", "", "error");
				}
			}  				
		});
	});
	

	if($(".form-login-mobile").length) {
		/*$(".form-login-mobile").validate({
			rules: {
				phone:{
					required: true,
					number: true,
					minlength: 9,
					maxlength: 12,
				},		
			},
			messages: {
				phone: {
					required: "",
					number: "",
					minlength: "",
					maxlength: "",
				},
			},
			highlight : function (element) {
				$(element).closest('.input-group').addClass('has-error');
			},
			unhighlight : function (element) {
				$(element).closest('.input-group').removeClass('has-error');
			},
			submitHandler : function(form) {
				$.ajax({
					url: './sources/ajax.php',
					type: 'post',
					dataType: "json",
					data: $(form).serialize() + "&do=login",
					success: function(data) {
						if(data.html=='ok') {
							swal({   
							title: "Đăng nhập thành công!",     
							type: "success",   
							confirmButtonColor: "#5cb85c",   
							confirmButtonText: "Ok",   
							closeOnConfirm: false }, function(){   
								window.location.href = data.redirect;
							});
						}
						else {
							sweetAlert("Đăng nhập lỗi!", "", "error");
						}
					}  				
				});
			}			
		});*/
	}
	
	if($(".form-login").length) {
		$(".form-login").validate({
			rules: {
				phone:{
					required: true,
					number: true,
					minlength: 9,
					maxlength: 12,
				},		
			},
			messages: {
				phone: {
					required: "",
					number: "",
					minlength: "",
					maxlength: "",
				},
			},
			highlight : function (element) {
				$(element).closest('.input-group').addClass('has-error');
			},
			unhighlight : function (element) {
				$(element).closest('.input-group').removeClass('has-error');
			},
			submitHandler : function(form) {
				$.ajax({
					url: './sources/ajax.php',
					type: 'post',
					dataType: "json",
					data: $(form).serialize() + "&do=login",
					success: function(data) {
						if(data.html=='ok') {
							swal({   
							title: "Đăng nhập thành công!",     
							type: "success",   
							confirmButtonColor: "#5cb85c",   
							confirmButtonText: "Ok",   
							closeOnConfirm: false }, function(){   
								window.location.href = data.redirect;
							});
						}
						else {
							sweetAlert("Đăng nhập lỗi!", "", "error");
						}
					}  				
				});
			}			
		});
	}
	
	
	if($(".form-tk-gs").length) {

		$(".form-tk-gs").validate({
			rules: {
				hoten: "required",
				ngay: "required",
				thang: "required",
				nam: "required",
				nguyenquan: "required",
				diachi: "required",
				email: {
					required: true,
					email: true
				},
				truong: "required",
				nganhhoc: "required",
				namtotnghiep: "required",
				trinhdo: "required",
				gioitinh: "required",
				uudiem: "required",
				'lop[]': "required",
				'mon[]': "required",
				tinhthanh: "required",
				'khuvuc[]': "required",
				'thoigianday[]': "required",
				luongtoithieu:{
					required: true,
					number: true
				},
				
			},
			messages: {
				hoten: '',
				ngay: '',
				thang: '',
				nam: '',
				nguyenquan: '',
				diachi: '',
				email: '',
				truong: '',
				nganhhoc: '',
				namtotnghiep: '',
				trinhdo: '',
				gioitinh: '',
				uudiem: '',
				'lop[]': '',
				'mon[]': '',
				tinhthanh: '',
				'khuvuc[]': '',
				'thoigianday[]': '',
				luongtoithieu: '',
			},
			highlight : function (element) {
				$(element).closest('.form-group').addClass('has-error');
			},
			unhighlight : function (element) {
				$(element).closest('.form-group').removeClass('has-error');
			},
						
		});
		
		
		$('.form-tk-gs #hoten, .form-tk-gs #truong').on('blur',function() {
			var ten = $('.form-tk-gs #hoten').val();
			var	truong = $('.form-tk-gs #truong').val();
			var slug = "Gia sư " + ten + " " + truong;
			$('.form-tk-gs #ten_vn').val(slug);
			stripUnicode(slug,'.form-tk-gs #alias_vn');
		});
		
		$('.form-tk-gs #tinhthanh').on('change',function() {
			var id = $(this).val();
			$.ajax({
				method: "POST",
				url: "./sources/ajax.php",
				data:{'id':id, 'do':'get_khuvuc'},
				success: function(data){
					$('.form-tk-gs #khuvuc').html(data);
					$(".select2").select2();
				}
			});	
		});
		
	}
	
	$('.btn-logout').on('click',function() {
		$.ajax({
			method: "POST",
			url: "./sources/ajax.php",
			data:{'do':'logout'},
			success: function(data){
				window.location.href = data;
			}
		});	
	});
	
	
	/* tim kiem */
	$('.box-search-lop #tinhthanh').on('change',function() {
		var id = $(this).val();
		$.ajax({
			method: "POST",
			url: "./sources/ajax.php",
			data:{'id':id, 'do':'get_khuvuc'},
			success: function(data){
				$('.box-search-lop #khuvuc').html(data);
				$(".select2").select2();
			}
		});	
	})
	
	
			
})