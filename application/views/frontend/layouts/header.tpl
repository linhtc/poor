<header>
	<div class="for-desktop">
		<div class="jumbotron" style="background-image: url({base_url()}media/images/teacher_bg.png);">
			<div class="row">
				<div class="col-md-2 text-left">
					<img width="100" height="100" src="{base_url()}media/images/logo.png" />
				</div>
				<div class="col-md-8 text-left">
					<h3 style="margin-top: 15px;font-size: 250%;padding-left: 50px;">GIA SƯ SÁNG TẠO VIỆT</h3>
					<h5 style="text-align: right; padding-right: 80px; font-size: 150%; margin-top: 20px;">Tri thức chắp cánh tương lai</h5>
				</div>
				<div class="col-md-4 text-center" style="display: none;">
					<h5 style="margin-top: 20px;">Điện thoại: {$smarty.session.contact->phone}</h5>
					<h5>Email: {$smarty.session.contact->email}</h5>
					<h5>Địa chỉ: {$smarty.session.contact->address}</h5>
				</div>
				<div class="col-md-2 text-right">	
					<img style="display: none;" width="100" height="100" src="{base_url()}media/images/right_header.jpg" />
				</div>
			</div>
  		</div>
	</div>	
	
	<div class="for-mobile">
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-2 text-center">
					<img width="100" height="100" src="{base_url()}media/images/logo.png" />
				</div>
				<div class="col-md-5 text-center">
					<h3 style="margin-top: 25px;">GIA SƯ SÁNG TẠO VIỆT</h3>
					<h5>Tri thức chắp cánh tương lai</h5>
				</div>
				<div class="col-md-5 text-center">
					<h5 style="margin-top: 20px;">Điện thoại: {$smarty.session.contact->phone}</h5>
					<h5>Email: {$smarty.session.contact->email}</h5>
					<h5>Địa chỉ: {$smarty.session.contact->address}</h5>
				</div>
			</div>
  		</div>
	</div>
</header>