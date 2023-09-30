<div class="popup-box{if count($filter_district) > 10} large scrollable{/if}" data-popup="dictrict">
	<div class="popup-header">
		<p class="title" data-popup-title>Выберите район</p>
		<span class="btn-close"></span>
	</div>
	<div class="popup-body" data-popup-body>
		<div class="popup-search-outer"><input type="text" placeholder="Поиск по районам" data-quicksearch class="input-search-filter"></div>
		<ul class="district-column-list columns checkbox-filters" data-filter-buttons="district">
			{foreach $filter_district as $item}
				<li data-default-value="{$item.value}"><span class="filter-option-button{if in_array($item['id'], $filter_active['district'])} is-checked{/if}" onclick="prop_filter(this)" data-valid="{$item.id}">{$item.value}</span>
			{/foreach}
		</ul>
		{view('popups/popup_fixed_bottom.tpl', ['current_url' => $current_url])}
	</div>
</div>