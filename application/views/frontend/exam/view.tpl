<div class="row" style="min-height: 300px;">
	<div class="col-md-9">
		{include file='frontend/layouts/breadcrumb.tpl'}
		{foreach from=$documents key=i item=item}
		<div class="media">
		  <div class="media-left">
		    <img src="{base_url()}media/images/book.png" class="media-object" style="width:77px">
		  </div>
		  <div class="media-body">
		    <h4 class="media-heading">{$item.subject}</h4>
		    <p>
		    	Đề thi môn {$item->subject} <br /> 
		    	<small><a href="{base_url()}de-thi/{$item.friendly}">Xem chi tiết...</a></small>
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