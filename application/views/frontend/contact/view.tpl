{if !empty($list)}
    {foreach from=$list key=i item=item}
    	<iframe class="map"
		    width="400" 
		    height="300" 
		    frameborder="0" 
		    style="border:0"
		    src="{$item.embed}" 
		    allowfullscreen>
		</iframe>
		<div id="address">
		    <span class="company-name">{$item.company}</span><br />
		    {$item.address}
		    <br />
		    <span class="lnr lnr-phone-handset"></span> {$item.phone} &nbsp;|&nbsp;&nbsp;<span class="lnr lnr-printer"></span> {$item.fax}<br />
		    <span class="lnr lnr-envelope"></span> contact@cnctech.com.vn<br />
		    <span class="lnr lnr-rocket"><a id="open-map" target="_blank" href="{$item.place}"> {$item.company} on Google Map</a></span>
		</div>
	{/foreach}
{/if}