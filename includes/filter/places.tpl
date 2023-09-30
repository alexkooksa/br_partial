<div class="filter-item{if array_key_exists('places', $filter_active)} is-applied{/if}" data-filter-type="input-group" data-filter-group="places" {if !is_null($homepage)}style="display:none" {/if}>
    <label {if is_null($homepage)}class="btn btn-outline-light btn-rounded" data-btn="toggle-range" {/if}><span class="label-text">Кол-во раб. мест</span></label>
    <div class="input-range-group nowrap">
        <div class="input-outer"><input type="text" data-places-from placeholder="от" {if $filter_active['places'][0]}value="{$filter_active['places'][0]}" {/if}></div>
        <div class="input-outer"><input type="text" data-places-till placeholder="до" {if $filter_active['places'][1]}value="{$filter_active['places'][1]}" {/if}></div>
        <button class="btn btn-primary btn-xs btn-rounded" data-btn="close-range">OK</button>
    </div>
</div>