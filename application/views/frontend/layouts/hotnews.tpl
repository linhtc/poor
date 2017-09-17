<div class="panel panel-primary">
  	<div class="panel-heading">Tin tức & sự kiện</div>
  	<div class="panel-body">
		<ul class="list-group">
			{foreach from=$smarty.session.hot_news key=ksub item=isub}
			<li class="list-group-item">
				<a href="{base_url()}tin-tuc/{$isub->friendly}">{$isub->title}</a>
			</li>
			{/foreach}
		</ul>
	</div>
</div>