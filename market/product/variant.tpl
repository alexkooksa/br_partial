<div class="wrap">
	<div class="h1-wrap flex-group">
		<h1>{$variant.meta_h1}</h1>
		{view('includes/buttons/wish.tpl', ['id' => $variant['external_id']])}
	</div>
	{if $snippet != ''}<p class="snippet">{$snippet}</p>{/if}
	<div class="property-page flex-group flex-gap">
		<div class="item property-page-content">
			{if $variant['image'] != '' || count($images) > 0}
				<div class="property-gallery-panorama" style="margin-bottom:20px">
					{/*}
					{if count($product_images) > 0 && count($images) > 0}
						<ul class="floating-tabs grey-color tabs-small" data-tabs-name="gallery-pan">
							<div class="tab-slider"></div>
							<li data-tab="variant_images" class="tab-item"><span>Фото</span></li>
							<li data-tab="product_images" class="tab-item"><span>Фото объекта</span></li>
						</ul>
					{/if}
					{*/}
					<div class="content-list" data-tabs-name="gallery-pan">
						{if count($images) > 0 || $variant['image'] != ''}
							<div class="tab-content" data-tab-content="variant_images">
								{view('market/product/includes/gallery.tpl', ['product' => $variant, 'folder' => $folder, 'images' => $images])}
							</div>
						{/if}
						{/*}
						{if count($product_images) > 0}
							<div class="tab-content" data-tab-content="product_images">
								{view('market/product/includes/gallery.tpl', ['product' => $product, 'images' => $product_images])}
							</div>
						{/if}
						{*/}
					</div>
				</div>
			{/if}
			{if getMobile()}
					{view('market/product/includes/variant_offer.tpl', ['product' => $product, 'variant' => $variant])}
			{/if}
			<div class="ui-block">
				<div class="property-main-props">
					{if $variant.square > 0}
						<div class="props-item">
							<p class="label">Площадь</p>
							<p class="main-prop-value">
								{echo goodnumber($variant.square)} м<sup>2</sup>
							</p>
						</div>
					{/if}
					{if $variant.places_from > 0 || $variant.places > 0}
						<div class="props-item">
							<p class="label">Рабочих мест</p>
							<p class="main-prop-value">
								{if $variant.places_from > 0}от {$variant.places_from}{/if}
								{if $variant.places > 0} до {$variant.places}{/if}
							</p>
						</div>
					{/if}
					{if $live_props}
						{if $variant.bedrooms != ""}
							<div class="props-item">
								<p class="label">Спальни</p>
								<p class="main-prop-value">
									{$variant.bedrooms}{if $variant.bedrooms != 'Студия'} {plural($variant.bedrooms, ['спальня','спальни','спален'])}{/if}
								</p>
							</div>
						{/if}
						{if $variant.wc > 0}
							<div class="props-item">
								<p class="label">Санузел</p>
								<p class="main-prop-value">
									{$variant.wc} {plural($variant.bedrooms, ['санузел','санузла','санузлов'])}
								</p>
							</div>
						{/if}
					{else:}
						{if $product.klass != ''}
							<div class="props-item">
								<p class="label">Класс</p>
								<p class="main-prop-value">
									{$product.klass}
								</p>
							</div>
						{/if}
						{if $variant['main_props']['year']}
							<div class="props-item">
								<p class="label">Год постройки</p>
								<p class="main-prop-value">
									{$variant['main_props']['year']}
								</p>
							</div>
						{/if}
						{if $variant.floor > 0}
							<div class="props-item">
								<p class="label">Этаж</p>
								<p class="main-prop-value">
									{$variant.floor}
									{if $product['main_props']['floors']}&nbsp;/&nbsp;{$product['main_props']['floors']}{/if}
								</p>
							</div>
						{/if}
					{/if}
						<div class="props-item">
							<p class="label">{$last_prop_name}</p>
							<p class="main-prop-value">
								{if $variant['main_props']['last']}{$variant['main_props']['last']}{else:}—{/if}
							</p>
						</div>
					
				</div>
				<hr>
				{view('market/product/includes/location.tpl', ['product' => $product, 'variant' => true])}
			</div>

			{if $properties}
				<div class="ui-block p-0 has-table" id="props">
					<p class="title ui-block-header">Характеристики</p>
					{/*}<p class="props-table-title">Технические параметры:</p>{*/}
					<table class="props-table">
						{foreach $properties as $k => $v}
							<tr>
								<td>{$k}</td>
								<td>{echo implode(', ',$v)}</td>
							</tr>
						{/foreach}
					</table>
					{/*}<div class="props-table-row"><button class="btn-dashed" data-btn="show-all-props"><span>Показать все характеристики</span></button></div>{*/}
				</div>
			{/if}
			{if $product_properties_location}
				<div class="ui-block p-0 has-table" id="props">
					<p class="title ui-block-header">Местоположение объекта</p>
					{view('market/product/includes/properties_table.tpl', ['properties' => $product_properties_location])}
					{/*}<div class="props-table-row"><button class="btn-dashed" data-btn="show-all-props"><span>Показать все характеристики</span></button></div>{*/}
				</div>
			{/if}
			{if $product_properties_finance}
				<div class="ui-block p-0 has-table" id="props">
					<p class="title ui-block-header">Финансовые условия</p>
					{view('market/product/includes/properties_finance_table.tpl', ['properties' => $product_properties_finance])}
				</div>
			{/if}
			{if $product_properties}
				<div class="ui-block p-0 has-table" id="props">
					<p class="title ui-block-header">Характеристики объекта</p>
					{/*}<p class="props-table-title">Технические параметры:</p>{*/}
					<table class="props-table">
						{if $product.klass != ''}
							<tr>
								<td>Класс</td>
								<td>{$product.klass}</td>
							</tr>
						{/if}
						{foreach $product_properties as $k => $v}
							{if $k != 'Инфраструктура'}
								<tr>
									<td>{$k}</td>
									<td>{echo implode(', ',$v)}</td>
								</tr>
							{/if}
						{/foreach}
					</table>
					{/*}<div class="props-table-row"><button class="btn-dashed" data-btn="show-all-props"><span>Показать все характеристики</span></button></div>{*/}
				</div>
			{/if}
			{if $product_properties['Инфраструктура']}
				<div class="ui-block p-0 has-table" id="infrastructure">
					<p class="title ui-block-header">Инфраструктура</p>
					<div class="ui-block-body">
						<ul class="flex-group flex-gap-small infrastructure-list">
							{foreach $product_properties['Инфраструктура'] as $v}
								<li class="item xs12 s6 m4 infrastructure-item">{$v}</li>
							{/foreach}
						</ul>
					</div>
				</div>
			{/if}
			{if $product.lat != '' && $product.lng != ''}
				<div class="ui-block p-0" id="mapblock">
					<p class="title ui-block-header">На карте</p>
					<div class="ui-block-body rows" data-lat="{$product.lat}" data-lng="{$product.lng}">
						{/* view('includes/property_location_info.tpl', ['variant' => true]) */}
						<div class="map variant-map" id="yaMap"></div>
					</div>
				</div>
			{/if}
		</div>

		<div class="item property-page-sidebar">
			<div class="sticky">
				<div class="ui-block rows">
					{if $product.category_id == 2}
						<p class="">Рабочих мест</p>
						<p class="property-price">{echo $variant['cw_places_from'] > 0 ? $variant['cw_places_from'] : 1}{if $variant['cw_places'] > 0} — {$variant['cw_places']}{/if}	</p>
					{else:}
						{if $variant['square'] > 0}
							<p class="">Площадь</p>
							<p class="property-price">{echo goodnumber($variant.square)} м<sup>2</sup></p>
						{/if}
					{/if}
				</div>
				{if !getMobile()}
					{view('market/product/includes/variant_offer.tpl', ['product' => $product, 'variant' => $variant])}
				{/if}
				<div class="ui-block rows">
					<p class="title title-bold">Объект</p>
					<a href="{site_url($product.full_url)}" >
						{if $product.image != ''}<br/><img src="/uploads/catalog/product/medium/{$product.image}"><br/>{/if}
						<span class="link">{$product.name}</span>
					</a><br/>
					<br/><a class="btn btn-primary btn-wide" href="{site_url($product.full_url)}">Все предложения</a>
				</div>
				{if !$CI->is_ae}
					{view('market/includes/banner_ae1.tpl')}
				{/if}
				{/*}
				<div class="ui-block property-sidebar-nav">
					<li><a data-link-name="price" href="{$_SERVER['REQUEST_URI']}#price" class="link">Арендная ставка</a></li>
					<li><a data-link-name="props" href="{$_SERVER['REQUEST_URI']}#props" class="link">Характеристики</a></li>
					<li><a data-link-name="infrastructure" href="{$_SERVER['REQUEST_URI']}#infrastructure" class="link">Инфраструктура</a></li>
					<li><a data-link-name="mapblock" href="{$_SERVER['REQUEST_URI']}#mapblock" class="link">На карте</a></li>
					<li><a data-link-name="similar" href="{$_SERVER['REQUEST_URI']}#similar" class="link">Похожие</a></li>
				</div>
				{*/}
			</div>
		</div>
	</div>
	<img src="_img/loader.svg" data-loader-similar="{$variant.id}" >
	
	{/*}<p>слайдер с вариантами (см. главную)</p>{*/}
	<noindex>
		<input type="hidden" data-popup-input="product_url" value="{site_url($variant.full_url)}" />
		<input type="hidden" data-popup-input="product_name" value="{$product.name}" />
		<input type="hidden" data-popup-input="variant_name" value="{$variant.meta_h1}" />
		<input type="hidden" data-popup-text value="{$variant.meta_h1}" />
	</noindex>
</div>