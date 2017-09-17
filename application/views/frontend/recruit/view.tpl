<div class="row" style="min-height: 300px;">
	<div class="col-md-9">
		{include file='frontend/layouts/breadcrumb.tpl'}
		{foreach from=$news key=i item=item}
		<div class="media">
		  	<div class="media-left">
		  		<div class="news-image" style="background-image: url({$item.image});">
		  		
		  		</div>
		  	</div>
		    <div class="media-body">
		      	<h4 class="media-heading">{$item.title} <small><i>{lang('posted_on')} {$item.modified}</i></small></h4>
		      	<p>
		      		{$item.summary}  <br /> 
			    	<small><a href="{base_url()}tuyen-dung/{$item.friendly}">Xem chi tiết...</a></small>
		    	</p>
		    </div>
		</div>
		{/foreach}
	</div>
	<div class="col-md-3">
		{include file='frontend/layouts/document.tpl'}
		{include file='frontend/layouts/newclass.tpl'}
		{include file='frontend/layouts/hotnews.tpl'}
	</div>
</div>