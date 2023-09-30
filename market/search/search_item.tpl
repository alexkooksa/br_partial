<li class="search-result-item">
	<a class="search-result-link" href="{site_url($product.full_url)}" target="_blank">
		{if $product.category_id == 1}
			<span class="search-result-label">БЦ</span>
		{/if}
		{if $product.category_id == 3}
			<span class="search-result-label sk">СК</span>
		{/if}
		{if $product.category_id == 2}
			<span class="search-result-label cow">КВ</span>
		{/if}
		
		<div class="search-result-desc">
			<p class="search-result-title">{$product.name}</p>
			<p class="small-text light-text">{$product.full_address}</p>
		</div>
	</a>
</li>