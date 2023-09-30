<div class="wrap wrap--small">
    <div class="text-block">
        <h1>{$page.title}</h1>
        {$page.prev_text}
    </div>
    {if $page.full_text != $page.prev_text && trim(strip_tags($page.full_text)) != ''}
        <div class="text-block">{$page.full_text}</div>
    {/if}
</div>

{$other_news = category_pages(8, 4, false, true)}
{if count($other_news) > 0}

    <section>
        <div class="wrap">
            <h2></h2>
            <div class="swiper-outer">
                <div class="swiper-container" data-swiper="responsive-cards">
                    <ul class="swiper-wrapper news-list news-widget flex-group flex-gap">
                        {foreach $other_news as $item}
                            <li class="item xs12 s6 m3 swiper-slide">
                                {view('includes/news_item.tpl', ['item' => $item])}
                            </li>
                        {/foreach}
                    </ul>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
{/if}