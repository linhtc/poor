<div class="row" style="min-height: 300px;">
	<div class="col-md-9">
		{include file='frontend/layouts/breadcrumb.tpl'}
		<table class="table table-striped table-bordered">
		    <thead>
		      	<tr>
			        <th>{lang('ms')}</th>
			        <th>{lang('class')}</th>
			        <th>{lang('subject')}</th>
			        <th>{lang('street_ward')}</th>
			        <th>{lang('district')}</th>
			        <th>{lang('times_per_week')}</th>
			        <th>{lang('time')}</th>
			        <th>{lang('salary')}</th>
			        <th>{lang('require')}</th>
		      	</tr>
		    </thead>
		    <tbody>
		    	{foreach from=$list key=i item=item}
		    		<tr class="{if $item.done eq 1}success{else}warning{/if}">
			    		<td>{$item.id}</td>
			    		<td>{$item.class}</td>
			    		<td>{$item.subject}</td>
			    		<td>{$item.address_street}</td>
			    		<td>{$item.address_district}</td>
			    		<td>{$item.times_per_week}</td>
			    		<td>{$item.work_time}</td>
			    		<td>{$item.salary}</td>
			    		<td>{$item.requirement}</td>
		    		</tr>
		    	{/foreach}
		    </tbody>
		</table>
	</div>
	<div class="col-md-3">
		{include file='frontend/layouts/document.tpl'}
		{include file='frontend/layouts/hotnews.tpl'}
	</div>
</div>