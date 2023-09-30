<div class="filter-item{if array_key_exists('square', $filter_active)} is-applied{/if}" data-filter-type="input-group" data-filter-group="square">
    <label><span class="label-text">Площадь, м<sup>2</sup></span></label>
    <div class="input-range-group nowrap">
        <div class="input-outer"><label for="">от</label><input type="text" data-square-from {if $filter_active['square'][0]}value="{$filter_active['square'][0]}" {/if}></div>
        <div class="input-outer"><label for="">до</label><input type="text" data-square-till {if $filter_active['square'][1]}value="{$filter_active['square'][1]}" {/if}></div>
    </div>
</div>