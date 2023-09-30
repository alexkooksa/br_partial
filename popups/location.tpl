<div class="popup-box{if count($filter_district) > 10} large scrollable{/if}" data-popup="location">
	<div class="popup-header">
		<p class="title" data-popup-title>Выберите округ</p>
		<span class="btn-close"></span>
	</div>
	<div class="popup-body" data-popup-body>
		{/*}<div class="popup-search-outer"><input type="text" placeholder="Поиск по округам" data-quicksearch class="input-search-filter"></div>{*/}
		<ul class="district-column-list columns" data-filter-buttons="location">
			{foreach $filter_location as $item}
				<li data-default-value="{$item.value}"><span class="filter-option-button{if in_array($item['id'], $filter_active['location'])} is-checked{/if}" onclick="prop_filter(this)" data-valid="{$item.id}">{$item.value}</span>
			{/foreach}
		</ul>
		<div class="popup-fixed-bottom"><a href="{$current_url}" data-filter-submit class="btn btn-primary">Показать объекты</button></a></div>
	</div>
</div>