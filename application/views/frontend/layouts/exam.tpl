<div class="panel panel-primary">
  	<div class="panel-heading">Đề thi mới</div>
  	<div class="panel-body">
		<ul class="list-group">
			{foreach from=$smarty.session.new_document key=ksub item=isub}
			<li class="list-group-item">
				<a href="{base_url()}de-thi/{$isub->friendly}">Đề thi môn {$isub->subject}</a>
			</li>
			{/foreach}
		</ul>
	</div>
</div>