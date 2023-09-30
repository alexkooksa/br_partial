<div class="ui-block rows">
	{if $variant.dealtype == 1}
		<p class="">Арендная ставка</p>
		<p class="property-price" data-dealtype="1">
			{if $product.category_id == 2}
				{if $variant['price'] > 0}
					<span data-period-group="price">
						{echo goodnumber($variant['price'], true)}
					</span>
					<span style="display:none" data-period-group="price_cw_all">
						{echo $variant['cw_price_places_from'] > 0 ? goodnumber($variant['cw_price_places_from']) : 1}
						{if $variant['cw_price_places'] > 0} – {echo goodnumber($variant['cw_price_places'])}{/if}
					</span>
				{else:}
					<span>по запросу</span>
				{/if}

			{else:}
				{if $variant.price > 0}
					<span data-period-group="price">{echo goodnumber($variant.price, true)}</span>
					<span style="display:none" data-period-group="price_year">{echo goodnumber($variant.price_year, true)}</span>
				{else:}
					<span>по запросу</span>
				{/if}
			{/if}
			{if $product['category_id'] == 2}
				{if $product['ranges']['price']}
					{view('market/product/includes/cw_toggle_price.tpl')}
				{/if}
			{else:}
				{if $variant.price > 0}
					{view('includes/buttons/price_period_toggle.tpl')}
				{/if}
			{/if}
		</p>
	{/if}
	{if $variant.dealtype == 2}
		<p class="">Стоимость продажи</p>
		<p class="property-price" data-dealtype="2">
			{if $variant.price_sale > 0}
				<span data-period-group="price_sale">{echo goodnumber($variant.price_sale, true)}</span>
				<span style="display:none" data-period-group="price_sale_all">{echo goodnumber($variant.price_sale_all, true)}</span>
				{view('includes/buttons/price_period_toggle.tpl', ['is_sale' => true])}
			{else:}
				<span>по запросу</span>
			{/if}
		</p>
	{/if}
</div>
<div class="ui-block rows">
	<p class="">Отдел аренды</p>
	{view('market/includes/phone.tpl')}
	<button class="btn btn-secondary btn-shadow-secondary btn-rounded btn-wide" onclick="popup('request_variant', 'Назначить просмотр')">Назначить просмотр</button>
</div>