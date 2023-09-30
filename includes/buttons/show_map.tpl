<button class="btn btn-default btn-rounded btn-xs btn-show-map" {if $product.lat != ''}data-lat="{$product.lat}" data-lng="{$product.lng}"{/if}>
	{svg_icon('map-marker', 'Показать на карте')}
</button>