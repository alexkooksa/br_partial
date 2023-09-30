<div>
	<table class="variants-table">
		<thead>
			<tr> 
				{if !$product['no_variant_images']}<th class="variant-photo-cell">Фото</th>{/if}
				<th>Кол-во мест</th>
				{if $product.is_floors}<th>Этаж</th>{/if}
				<th>Ставка {view('market/product/includes/cw_toggle_price.tpl')}</th> 
				<th></th>
			</tr>
		</thead>
		<tbody>
			{foreach $variants as $i => $item}
				<tr class="variant-row{if $i > 9} hidden{/if}">
					{if !$product['no_variant_images']}
						<td class="variant-photo-cell">
							{if $item.image != ""}
								<div class="variant-image-wrap image-fit">
									<img {if !getMobile()}style="width:180px"{/if} src="/uploads/catalog/variant/medium/{$item.image}" alt="{$product.name} - {$item.square}">
								</div>
							{/if}
						</td>
					{/if}
					<td><b>{echo $item.cw_places_from > 1 ? $item.cw_places_from : 1}{if $item.cw_places > 0} — {$item.cw_places}{/if}</b></td>
					{if $product.is_floors}
						<td>
							{if $item.floor > 0}
								{$item.floor}
								{if $product['main_props']['floors']}&nbsp;/&nbsp;{$product['main_props']['floors']}{/if}
							{else:}
								-
							{/if}
						</td>
					{/if}
					<td data-dealtype="1">
						{if $item.price > 0}
							<span data-period-group="price">{echo goodnumber($item.price)}&nbsp;{echo $CI->cursymb}</span>
							<span data-period-group="price_cw_all" style="display:none">{echo goodnumber($item.cw_price_places_from)} – {echo goodnumber($item.cw_price_places)}&nbsp;{echo $CI->cursymb}</span>
						{else:}
							<span data-period-group="price">по запросу</span>
							<span data-period-group="price_cw_all" style="display:none">по запросу</span>
						{/if}
					</td>
					<td><a href="{site_url($item.full_url)}" class="variant-link"></a></td>
				</tr>
			{/foreach}
		</tbody>
	</table>
	{if count($variants) > 10}
		{$more_count = count($variants)-10}
		<button class="btn-more-variants" data-btn="show-more-variants"><span>Показать ещё {$more_count} {echo plural($more_count, ['предложение','предложения','предложений'])}</span></button>
	{/if}
</div>