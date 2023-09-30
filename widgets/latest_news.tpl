<div class="swiper-outer">
    <div class="swiper-container" data-swiper="responsive-cards">
        <ul class="swiper-wrapper news-list news-widget flex-group flex-gap">
            {foreach $recent_news as $item}
                <li class="item xs12 s6 m3 swiper-slide">
                    {view('includes/news_item.tpl', ['item' => $item])}
                </li>
            {/foreach}
        </ul>
    </div>
    <div class="swiper-pagination"></div>
</div>