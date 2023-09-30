{foreach $filters as $filter}
    <div class="filter-row">
        <p class="filter-name">{$filter.name}{if $filter.edizm != ''}, {$filter.edizm}{/if}</p>
        <div class="filter-content">
            {if $filter.isrange == 1}
                <div class="input-range-group-default" data-period-group="{$filter.url}" data-add-range="{$filter.url}">
                    <div class="input-outer">
                        <label for="">от</label>
                        <input onkeyup="refilter()" type="text" data-{$filter.url}-from {if $filter.range}value="{$filter['range'][0]}" {/if}>
                    </div>
                    <div class="input-outer">
                        <label for="">до</label>
                        <input onkeyup="refilter()" type="text" data-{$filter.url}-till {if $filter.range}value="{$filter['range'][1]}" {/if}>
                    </div>
                </div>
            {else:}
            <ul class="filter-options-list {/*if count($filter.values) > 10} columns{/if*/}" data-filter-buttons="{$filter.url}">
                {$i = 1}
                {foreach $filter.values as $val_id => $val}
                    <li class="filter-option-item" {if $i > 8}hidden{/if}><span class="filter-option-button{if in_array($val_id, $filter['active'])} is-checked{/if}" onclick="prop_filter(this)" data-valid="{$val_id}">{$val}</span></li>
                    {$i++}
                {/foreach}
                {if count($filter.values) > 8}<li class="filter-option-item"><span class="filter-option-button" data-btn="show-all-options">Показать еще {echo count($filter.values) - 8}</span></li>{/if}
            </ul>
        {/if}
    </div>
</div>
{/foreach}