<div class="row" style="min-height: 300px;">
	<div class="col-md-9">
		{include file='frontend/layouts/breadcrumb.tpl'}
		<div class="row">
			{foreach from=$news key=i item=item}
				<div class="col-md-4">
					<div class="news-image" style="background-image: url({$item.image});">
		  		
		  			</div>
		  			<h3><a href="{base_url()}tu-van-mua-sach/{$item.friendly}">{$item.title}</a></h3>
		  			<small></small>
				</div>
			{/foreach}
		</div>
	</div>
	<div class="col-md-3">
		{include file='frontend/layouts/document.tpl'}
		{include file='frontend/layouts/newclass.tpl'}
	</div>
</div>