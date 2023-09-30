<div class="filter-item{if $price_in_filter} is-applied{/if}" data-filter-type="input-group" data-filter-group="price">
    <label>
        <span class="label-text" {if $filter_active['dealtype'] == 2 || $is_res}style="display:none" {/if} data-dealtype="1">Ставка, <span style="display: none;" data-cw-label>,&nbsp;&#8381;за место в мес.</span></span>
        <span class="label-text" {if $homepage || $filter_active['dealtype'] == 1 || is_null($filter_active['dealtype'])}{if $is_res !== true}style="display:none" {/if}{/if} data-dealtype="2">Стоимость, </span>

        {view('includes/buttons/price_period_toggle.tpl')}

    </label>
    <div class="input-range-group" data-price-inputs>
        {foreach ['price','price_year'] as $i => $price_type}
            <div data-dealtype="1" data-period-group="{$price_type}" class="input-outer" {if $i> 0}style="display:none" {/if} data-filter-{$price_type}> <label for="">от</label> <input id="" type="text" data-{$price_type}-from {if $filter_active[$price_type][0]}value="{$filter_active[$price_type][0]}" {/if}> </div>
            <div data-dealtype="1" data-period-group="{$price_type}" class="input-outer" {if $i> 0}style="display:none" {/if} data-filter-{$price_type}><label for="">до</label><input id="" type="text" data-{$price_type}-till {if $filter_active[$price_type][1]}value="{$filter_active[$price_type][1]}" {/if}> </div>
        {/foreach}
        {foreach ['price_sale','price_sale_all'] as $price_type}
            <div class="input-outer" data-period-group="{$price_type}" style="display:none" data-dealtype="2"><label for="">от</label><input id="" type="text" data-{$price_type}-from {if $filter_active[$price_type][0]}value="{$filter_active[$price_type][0]}" {/if}></div>
            <div class="input-outer" data-period-group="{$price_type}" style="display:none" data-dealtype="2"><label for="">до</label><input id="" type="text" data-{$price_type}-till {if $filter_active[$price_type][1]}value="{$filter_active[$price_type][1]}" {/if}></div>
        {/foreach}
        {/*}
        {foreach ['price','price_cw'] as $price_type}
        <div class="input-outer" data-period-group="{$price_type}" style="display:none" data-dealtype="cow"><input type="text" data-{$price_type}-from placeholder="от" {if $filter_active[$price_type][0]}value="{$filter_active[$price_type][0]}" {/if}></div>
        <div class="input-outer" data-period-group="{$price_type}" style="display:none" data-dealtype="cow"><input type="text" data-{$price_type}-till placeholder="до" {if $filter_active[$price_type][1]}value="{$filter_active[$price_type][1]}" {/if}></div>
        {/foreach}
        {*/}
	</div>
</div>