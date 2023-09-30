<section class="section-bg bg-light-alt">
	<div class="wrap">
		<h1>Избранные объекты и предложения</h1><br/>
		
			{/*}<p>{$totalCount} {echo plural($totalCount, ['объект','объекта','объектов'])} в списке</p>{*/}
			{if $both}
				<div class="category-toolbar ui-block flex-group aic">
					<ul data-tabs-name="wishlist-filter" class="floating-tabs">
						<div class="tab-slider"></div>
						<li data-tab="product" class="tab-item"><span>Объекты</span></li>
						<li data-tab="variant" class="tab-item"><span>Предложения</span></li>
					</ul>
				</div>
			{/if}
			<div class="content-list" data-tabs-name="wishlist-filter">
				{if count($products) > 0}
					{if !$both}<h2>Объекты</h2>{/if}
					<div class="tab-content active" data-tab-content="product">
						<ul class="property-list" wl-product data-layout="default">
							{foreach $products as $product}
								{view('market/category/category_item.tpl', ['product' => $product, 'wishlist' => true])}
							{/foreach}
						</ul>
					</div>
				{/if}
				{if count($variants) > 0}
					{if !$both}<h2>Предложения</h2>{/if}
					<div class="tab-content{if count($products) < 1} active{/if}" data-tab-content="variant">
						<ul class="property-list" wl-variant data-layout="default">
							{foreach $variants as $product}
								{view('market/category/category_variant_item.tpl', ['product' => $product, 'wishlist' => true])}
							{/foreach}
						</ul>
					</div>
				{/if}
			</div>
		<div class="category-toolbar ui-block flex-group aic" data-zero-offers {if $totalCount > 0}style="display:none"{/if}>
			<p>Пока ничего не добавлено</p>
		</div>
	</div>
</section>