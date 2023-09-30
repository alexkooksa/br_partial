{if !is_null($icon_only)}
    <a href="tel:+{echo preg_replace('~[^0-9]+~','',$CI->city['phone'])}" class="btn-md btn--icon-only btn-md icon-md btn-phone--hidden">{svg_icon('phone')}</a>
{else:}
    <a href="tel:+{echo preg_replace('~[^0-9]+~','',$CI->city['phone'])}" class="btn btn-outline btn-phone">{$CI->city['phone']}</a>
{/if}