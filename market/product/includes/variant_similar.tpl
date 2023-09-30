<div class="ui-block similar-properties-block" id="similar">
	<h2 class="ui-block-inline-title">Похожие предложения</h2>
	<ul class="floating-tabs" data-tabs-name="similar-offers">
		<div class="tab-slider"></div>
		{foreach $similar_names as $url => $name}
			{if $similar[$url] && count($similar[$url]) > 0}
				<li data-tab="{$url}" class="tab-item"><span>{$name}</span></li>
			{/if}
		{/foreach}
		{if count($similar['square']) > 0}
			<li data-tab="square" class="tab-item"><span>Площадь</span></li>
		{/if}
	</ul>
</div>

<div class="content-list" data-tabs-name="similar-offers">
	{$i=0}
	{foreach $similar_names as $url => $name}
		{if $similar[$url] && count($similar[$url]) > 0}
			<div class="tab-content{if $i==0} active{/if}" data-tab-content="{$url}">
				<div class="swiper-outer swiper-offset-nav has-shadows">
					<div class="swiper-container" data-swiper="offers">
						<ul class="swiper-wrapper">
							{foreach $similar[$url] as $product}
								{view('market/category/category_variant_item.tpl', ['product' => $product, 'city' => $city, 'vertical' => true, 'slider' => true])}
							{/foreach}
						</ul>
					</div>
					<div class="swiper-pagination"></div>
					<div class="swiper-navigation">
						<div class="swiper-button-prev swiper-button-default"></div>
						<div class="swiper-button-next swiper-button-default"></div>
					</div>
				</div>
			</div>
			{$i++}
		{/if}
		
	{/foreach}

</div>