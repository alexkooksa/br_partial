{$thumbcount = $product['image'] == '' ? count($images) : count($images) + 1}
<div class="swiper-product-gallery-outer ui-block p-0">
    <div class="swiper-container swiper-product-gallery" data-thumbs="{$thumbcount}">
        <div class="swiper-wrapper">
			{if $product['image'] != ''}
				{view('market/product/includes/swiper_item.tpl', ['folder' => $folder ? $folder : 'product', 'image' => $product['image']])}
			{/if}
            {foreach $images as $img}
                {view('market/product/includes/swiper_item.tpl', ['folder' => 'additional', 'image' => $img['image']])}
            {/foreach}
        </div>
        <div class="swiper-pagination-outer">
            <div class="swiper-pagination">

            </div>
        </div>
        <div class="swiper-button-prev swiper-button-rounded"></div>
        <div class="swiper-button-next swiper-button-rounded"></div>
    </div>

    <div class="swiper-thumbs-outer">
        <div class="swiper-container swiper-product-thumbs swiper-outer-nav" data-thumbs="{$thumbcount}">
            <div class="swiper-wrapper">
				{if $product['image'] != ''}
					{view('market/product/includes/swiper_item_thumb.tpl', ['folder' => $folder ? $folder : 'product', 'image' => $product['image']])}
				{/if}
				{foreach $images as $img}
					{view('market/product/includes/swiper_item_thumb.tpl', ['folder' => 'additional', 'image' => $img['image']])}
                {/foreach}
            </div>
        </div>
		{if count($images) > 7}
			<div class="swiper-button-prev swiper-button-rounded swiper-button-white"></div>
			<div class="swiper-button-next swiper-button-rounded swiper-button-white"></div>
		{/if}
    </div>
</div>