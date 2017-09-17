<div class="row" style="min-height: 300px;">
	<div class="col-md-9">
		{include file='frontend/layouts/breadcrumb.tpl'}
		<h3>{$item->title}</h3> <br />
		<h5>{$item->summary}</h5> <br />
		<p>{$item->content}</p>
	</div>
	<div class="col-md-3">
		{include file='frontend/layouts/document.tpl'}
		{include file='frontend/layouts/newclass.tpl'}
		{include file='frontend/layouts/hotnews.tpl'}
	</div>
</div>