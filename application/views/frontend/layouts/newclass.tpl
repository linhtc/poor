<div class="panel panel-primary">
  	<div class="panel-heading">Lớp mới đăng</div>
  	<div class="panel-body">
		<ul class="list-group">
			{foreach from=$smarty.session.new_class key=ksub item=isub}
			<li class="list-group-item">
				<a href="{base_url()}lop-moi">{$isub->subject} {$isub->class}</a>
			</li>
			{/foreach}
		</ul>
	</div>
</div>