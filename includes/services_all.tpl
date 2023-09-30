{$services = get_sub_categories(3)}
{if count($services) > 0}
    <ul class="filter-tabs {if !is_null($widget)}white-tabs{/if}" data-tabs-name="services">
        {foreach $services as $i => $subcat}
            <li class="tab-item" data-tab="service-{$subcat.id}"><span>{$subcat.name}</span></li>
        {/foreach}
    </ul>
    <div class="content-list" data-tabs-name="services">
        {foreach $services as $i => $subcat}
            <div class="tab-content" data-tab-content="service-{$subcat.id}">
                <div class="swiper-outer">
                    <div class="swiper-container" {if !is_null($widget)}data-swiper="responsive-cards" {/if}>
                        {$service_pages = category_pages($subcat.id)}
                        <ol class="service-list flex-group flex-gap swiper-wrapper">
                            {foreach $service_pages as $item}
                                {view('includes/service_item.tpl',  ['item' => $item,  'widget' => $widget])}
                            {/foreach}
                            <li class="item xs12 s6 m3 swiper-slide">
                                <a href="/service" class="service-card transparent">
                                    <p class="title">Все услуги</p>
                                </a>
                            </li>
                        </ol>
                    </div>
                    <div class="swiper-pagination inverted"></div>
                </div>
            </div>
        {/foreach}
    </div>
{/if}