{if !is_null($btn_mob)}
    <button class="btn--icon-only btn-md btn-outline btn-wish has-counter">
        <span class="button-inner">
            {svg_icon('star')}
            <span data-wish-counter></span>
        </span>
    </button>
{else:}
    <button class="btn--icon-only btn--sm btn-wish has-counter">
        <span class="button-inner">
            {svg_icon('star')}
            <span data-wish-counter></span>
        </span>
    </button>
{/if}