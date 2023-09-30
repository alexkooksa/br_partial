<li class="item xs12 s6 m3 {if !is_null($widget)}swiper-slide{/if}">
    <a href="{if $is_category}{site_url($item.path_url)}{else:}{site_url($item.full_url)}{/if}" class="service-card {if !is_null($widget)}transparent{/if}">
        <p class="title">{if $is_category}{$item.name}{else:}{$item.title}{/if}</p>
    </a>
</li>