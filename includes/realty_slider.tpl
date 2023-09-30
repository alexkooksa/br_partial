<ul class="floating-tabs" data-tabs-name="variants-slider-rent">
    <li class="tab-item active" data-tab="offices"><span>Офисы</span></li>
    <li class="tab-item" data-tab="warehouses"><span>Склады</span></li>
</ul>
<div class="content-list" data-tabs-name="variants-slider-rent">
    <div class="tab-content" data-tab-content="offices">
        <div class="swiper-outer">
            <div class="swiper-container" data-swiper="realty-slider">
                <div class="swiper-wrapper">
                    {for $i = 0; $i < 2; $i++}
                        <div class="swiper-slide">{view('market/category/category_item.tpl', ['slider' => true, 'i' => $i])}</div>
                        <div class="swiper-slide">{view('market/category/category_variant_item.tpl', ['slider' => true, 'i' => $i])}</div>
                    {/for}
                </div>
            </div>

            <div class="swiper-navigation swiper-nav-top-right is-absolute">
                <div class="swiper-button swiper-button-prev swiper-button-rounded"></div>
                <div class="swiper-button swiper-button-next swiper-button-rounded"></div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>

    <div class="tab-content" data-tab-content="warehouses">
        <div class="swiper-outer">
            <div class="swiper-container" data-swiper="realty-slider">
                <div class="swiper-wrapper">
                    {for $i = 0; $i < 4; $i++}
                        {view('market/category/category_variant_item.tpl', ['slider' => true, 'i' => $i])}
                    {/for}
                </div>
            </div>
            <div class="swiper-navigation swiper-nav-top-right is-absolute">
                <div class="swiper-button swiper-button-prev swiper-button-rounded"></div>
                <div class="swiper-button swiper-button-next swiper-button-rounded"></div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
</div>