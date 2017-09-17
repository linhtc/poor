<div class="row" style="min-height: 300px;">
	<div class="col-md-9">
		{include file='frontend/layouts/breadcrumb.tpl'}
		{foreach from=$documents key=i item=item}
		<div class="media">
		  <div class="media-left">
		    <img src="{base_url()}media/images/book.png" class="media-object" style="width:77px">
		  </div>
		  <div class="media-body">
		    <h4 class="media-heading">{$item.classname}</h4>
		    <p>
		    	Tài liệu môn {$subject->subject} <br /> 
		    	{if $item.subjects|@count eq 1}
		    	<small><a href="{base_url()}tai-lieu/{$subject->friendly}/{$item.friendly}">Xem chi tiết...</a></small>
		    	{else}
		    	<small>
		    		{foreach from=$item.subjects key=ii item=iitem}
		    		<a style="margin-right: 10px;" href="{base_url()}tai-lieu/{$subject->friendly}/{$item.friendly}/{$iitem.friendly}">{$iitem.subject}</a>
		    		{/foreach}
	    		</small>
		    	{/if}
	    	</p>
		  </div>
		</div>
		{/foreach}
	</div>
	<div class="col-md-3">
		{include file='frontend/layouts/exam.tpl'}
		{include file='frontend/layouts/newclass.tpl'}
		{include file='frontend/layouts/hotnews.tpl'}
	</div>
</div>