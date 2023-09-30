<div class="filter-item{if array_key_exists('dealtype', $filter_active)} is-applied{/if}{if ($homepage || $is_res) && $CI->is_ae} fhidden{/if}" data-filter-type="select" data-filter-name="offertype">
    <select class="{if !is_null($homepage)}borderless{else:}select-rounded select-small{/if}" onchange="toggle_dealtype(this)" data-filter-url="dealtype" id="">
        <option value="1" {if $is_res !== true && ($homepage || $filter_active['dealtype'] == 1)}selected{/if}>Аренда</option>
        {if !($category && $category.id == 2)}<option value="2" {if $is_res || $filter_active['dealtype'] == 2}selected{/if}>Продажа</option>{/if}
    </select>
</div>