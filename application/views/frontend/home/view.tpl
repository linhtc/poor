<div class="row home-container" style="min-height: 300px;">
	<div class="col-md-9">
		{$item->page_content}
	</div>
	<div class="col-md-3">
		{include file='frontend/layouts/document.tpl'}
		{include file='frontend/layouts/newclass.tpl'}
		{include file='frontend/layouts/hotnews.tpl'}
		<div class="panel panel-primary">
		  	<div class="panel-heading">Thống kê truy cập</div>
		  	<div class="panel-body">
				<ul class="list-group">
				  	<li class="list-group-item">Hôm nay <span class="badge">12</span></li>
				  	<li class="list-group-item">Trong tuần <span class="badge">123</span></li>
				  	<li class="list-group-item">Trong tháng <span class="badge">1234</span></li>
				  	<li class="list-group-item">Tất cả <span class="badge">12345</span></li>
				</ul>
			</div>
		</div>
	</div>
</div>