<div class="rows">
	{if $is_variant}<p class="property-parent-title"><a href="{site_url($product.full_url)}" class="link"><b>{$product.name}</b></a></p>{/if}
	{if $product.address != ''}
		<p class="e-icon-map-green">
			{if $is_variant}
				<a class="btn-dashed" href="{site_url($product.full_url)}"><span>{$product.full_address}</span></a>
			{else:}
				{$product.full_address}
			{/if}
		</p>
	{/if}

	{if $product.category_id != 3}
		{/* если не склад */}
		{if $product['main_props']['district']}
			<p class="e-icon-map-green">Район {$product['main_props']['district']}</p>
		{/if}
		{/* $product['main_props']['location']}
			<p class="e-icon-map-green">Округ {$product['main_props']['location']}</p>
		{*/}
	{/if}
	{if $product['main_props']['direction']}
		<p class="e-icon-map-green">Направление: {echo mb_strtolower($product['main_props']['direction'])}</p>
	{/if}
	{if $product['main_props']['highway']}
		{view('market/includes/highway.tpl', ['highway' => $product['main_props']['highway']])}
	{/if}

	{if $product['main_props']['subway'] && $product.category_id != 3}
		{view('market/includes/metro.tpl', ['subway' => $product['main_props']['subway'], 'add_prefix' => true])}
	{/if}

</div>