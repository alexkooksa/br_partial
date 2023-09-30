<div>
<table class="variants-table">
    <thead>
        <tr>
            {if !$product['no_variant_images']}<th class="variant-photo-cell">Фото</th>{/if}
			<th>Площадь</th>
            {if $product.is_floors}<th>Этаж</th>{/if}
            {if $product.is_type}<th>Тип склада</th>{/if}
            {if $product.is_bedrooms}<th>Спален</th>{/if}
            <th>{if $dealtype == 2}
					Стоимость {view('includes/buttons/price_period_toggle.tpl', ['is_sale' => true])}
				{else:}
					Ставка {view('includes/buttons/price_period_toggle.tpl', ['hide_currency' => true])}
				{/if}</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
		{$total=0}
		{foreach $variants as $i => $item}
			{if $dealtype && $item.dealtype != $dealtype}{continue}{else:}{$total++}{/if}
			<tr class="variant-row{if $total > 9} hidden{/if}">
				{if !$product['no_variant_images']}
					<td class="variant-photo-cell">
						{if $item.image != ""}
							<div class="variant-image-wrap image-fit">
								<img {if !getMobile()}style="width:180px"{/if} src="/uploads/catalog/variant/medium/{$item.image}" alt="{$product.name} - {$item.square}">
							</div>
						{/if}
					</td>
				{/if}
				<td><b>{echo goodnumber($item.square)}&nbsp;м<sup>2</sup></b></td>

				{if $product.is_type}
					<td>{echo $product['type_sklad'] == '' ? '-' : $product['type_sklad']}</td>
				{/if}
				{if $product.is_bedrooms}<td>{$item.bedrooms}</td>{/if}
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
				<td data-dealtype="{$dealtype}">
					{if $product.rent}
						{if $item.price > 0}
							<span data-period-group="price">{echo goodnumber($item.price, true)}</span>
							<span data-period-group="price_year" style="display:none">{echo goodnumber($item.price_year, true)}</span>
							&nbsp;{echo $CI->cursymb}/м<sup>2</sup>
						{else:}
							<span data-period-group="price">по запросу</span>
							<span data-period-group="price_year" style="display:none">по запросу</span>
						{/if}
					{/if}
					{if $product.sale}
						{if $item.price_sale > 0}
							<span data-period-group="price_sale">{echo goodnumber($item.price_sale, true)}&nbsp;{echo $CI->cursymb}/м<sup>2</sup></span>
							<span data-period-group="price_sale_all" style="display:none">{echo goodnumber($item.price_sale_all, true)}&nbsp;{echo $CI->cursymb}</span>
						{else:}
							<span data-period-group="price_sale">по запросу</span>
							<span data-period-group="price_sale_all" style="display:none">по запросу</span>
						{/if}

					{/if}
				</td>
				<td><a href="{site_url($item.full_url)}" class="variant-link"></a></td>
			</tr>
		{/foreach}
    </tbody>
</table>
{if $total > 10}
	{$more_count = count($variants)-10}
	<button class="btn-more-variants" data-btn="show-more-variants"><span>Показать ещё {$more_count} {echo plural($more_count, ['предложение','предложения','предложений'])}</span></button>
{/if}
</div>