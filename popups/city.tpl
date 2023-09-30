{$cities = get_cities()}
<div class="rows-large">
    <div>
		{/*}<p class="title">Популярные города</p>{*/}
        <ul class="flex-group flex-gap-small">
            {foreach $cities as $item}
                {if $item.main == '1'}
                    <li class="item" style="font-size:20px"><a {if $CI->city['id'] == $item['id']}style="color:#399559"{/if} href="{$item.url}">{$item.city}</a></li>
                {/if}
            {/foreach}
        </ul>
    </div>
	{if !$CI->is_kz}
    <div>
        <p class="title">Все города</p>
        <ul class="cities-column-list columns">
            {foreach $cities as $item}
                {if $item.main !== '1'}
                    <li><a {if $CI->city['id'] == $item['id']}style="color:#399559"{/if} href="{$item.url}">{$item.city}</a></li>
                {/if}
            {/foreach}
        </ul>
    </div>
	{/if}
</div>