{if !is_null($icon_only)}
    <button class="btn-outline btn--icon-only btn-md btn-callback-small" onclick="popup('callback', 'Заполните форму, и мы свяжемся с вами в ближайшее время')" data-popup-target="callback">{svg_icon('phone')}</button>

{else:}
    <button class="btn btn-primary--light btn-callback" onclick="popup('callback', 'Заполните форму, и мы свяжемся с вами в ближайшее время')" data-popup-target="callback">
        Заказать звонок
    </button>
{/if}