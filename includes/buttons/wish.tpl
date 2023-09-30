{if is_null($wishlist)}
<button class="btn--icon-only btn-add-wish {if !is_null($class)}{$class}{/if}" data-wish="{$id}" onclick="to_wish({$id})">
        {svg_icon('star')}
    </button>
{else:}
<button class="btn--icon-only btn-add-wish {if !is_null($class)}{$class}{/if}" onclick="rm_wish({$id}, this)">
        {svg_icon('star')}
    </button>
{/if}