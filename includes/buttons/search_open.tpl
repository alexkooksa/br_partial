{if !is_null($btn_mob)}
    <button class="btn-outline btn--icon-only btn-md btn-search" data-btn="open-search">
        {svg_icon('search')}
    </button>
{else:}
    <button class="btn--icon-only btn--sm" data-btn="open-search">
        {svg_icon('search')}
    </button>
{/if}