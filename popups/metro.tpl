<div class="popup-box large scrollable" data-popup="metro">
    <div class="popup-header">
        <p class="title" data-popup-title>Выберите метро</p>
        <span class="btn-close"></span>
    </div>
    <div class="popup-body" data-popup-body>
        <div class="popup-search-outer"><input type="text" placeholder="Поиск по станциям" data-quicksearch class="input-search-filter"></div>
        <ul class="metro-column-list columns checkbox-filters" data-filter-buttons="subway">
            {$i = 1}
            {$letter = mb_substr($filter_subway[0]['value'], 0, 1)}
            {foreach $filter_subway as $item}
                {if trim($item.value) !== ''}
                    <li data-default-value="{$item.value}">
                        {if $letter != mb_substr($item.value, 0, 1) || $i == 1}
                            {$letter = mb_substr($item.value, 0, 1)}
                            <p class="alphabet-letter">{echo mb_substr($item.value, 0, 1)}</p>
                        {/if}
                        <span class="filter-option-button{if in_array($item['id'], $filter_active['subway'])} is-checked{/if}" onclick="prop_filter(this)" data-valid="{$item.id}">{$item.value}</span>
                    </li>
                {/if}
                {$i++}
            {/foreach}
        </ul>
        {view('popups/popup_fixed_bottom.tpl', ['current_url' => $current_url])}
    </div>
</div>