	{if $product.client_phone}
    	{if $product['client_phone']['phone']}<a hidden href="tel:+{echo preg_replace('~[^0-9]+~','',$product['client_phone']['phone'])}" class="btn btn-primary" data-property-phone>{$product['client_phone']['phone']}</a>{/if}
	{else:}
    	<a hidden href="tel:+{echo preg_replace('~[^0-9]+~','',$CI->city['phone'])}" class="btn btn-primary" data-property-phone>{$CI->city['phone']}</a>
	{/if}
	<button class="btn btn-primary" data-btn="show-phone">Показать телефон</button>