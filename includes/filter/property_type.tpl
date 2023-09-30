<div {if $CI->is_kz || ($CI->is_ae && is_null($homepage))}style="display:none"{/if} class="filter-item{if array_key_exists('offertype', $filter_active)} is-applied{/if}" data-filter-type="select" data-filter-objecttype>
    <label for=""><span class="label-text">Тип недвижимости</span></label>
    <select class="{if !is_null($homepage)}borderless{else:}select-rounded select-small{/if}" onchange="set_object_type(this)" data-start-filter>
        {if $CI->is_ae}<option data-otype="appt" value="/apartments" {if $homepage || $is_res || $filter_active['offertype'] == 'appt'}selected{/if}>Апартаменты</option>{/if}
        <option data-otype="bc" value="/biznes-centr" {if !$CI->is_ae && ($homepage || $filter_active['offertype'] == 'bc')}selected{/if}>Офис</option>
        {if !$CI->is_ae}<option data-otype="sklad" value="/warehouse" {if $filter_active['offertype'] == 'sklad'}selected{/if}>Склад</option>{/if}
        <option data-otype="cw" value="/coworking" {if $filter_active['offertype'] == 'cw'}selected{/if}>Коворкинг</option>
    </select>
</div>