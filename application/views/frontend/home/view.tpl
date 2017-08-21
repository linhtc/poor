<div id="slides">
	<ul class="slides-container">
		{if !empty($list)}
		    {foreach from=$list key=i item=item}
		    	<li><img src="{$item.photo}">
					<p class="slides-caption">{$item.caption}</p>
				</li>
			{/foreach}
		{/if}					
	</ul>
</div>