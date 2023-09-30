<button class="btn-dashed wsnw" data-dealtype="1">
	<span data-set-input="price_cw_all" class="active" data-input="price">
		{if is_null($hide_currency)}{echo $CI->cursymb}&nbsp;{/if}<span>за место в мес.</span>
	</span>
	<span data-set-input="price" data-input="price_cw_all">
		{if is_null($hide_currency)}{echo $CI->cursymb}&nbsp;{/if}<span>за все в мес.</span>
	</span>
</button>
