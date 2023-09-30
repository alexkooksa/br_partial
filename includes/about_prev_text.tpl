{$about_page = get_page(5367)}
<section class="section-bg bg-primary section-about pb-0">
    <div class="wrap">
        {if !is_null($h1)}
            <h1 class="visually-hidden">О компании</h1>
        {/if}
        <p class="title section-title h1">
            {strip_tags($about_page.prev_text)}
        </p>
    </div>

    <section class="section-bg section-desc-outer">
        <div class="wrap">
            <div class="section-desc">
                <p>{strip_tags($about_page.full_text)}</p>
                <button class="btn btn-lg btn-primary--transparent">Презентация компании</button>
            </div>

            <div class="swiper-outer">
                <div class="swiper-container" data-swiper="responsive-cards">
                    <ul class="company-facts-list flex-group flex-gap swiper-wrapper">
                        <li class="item xs12 s4 swiper-slide">
                            <div class="company-fact">
                                <p class="title h3">CORFAC Int.</p>
                                <p class="fact-desc">Bright Rich стала первой российской компанией, принятой в CORFAC, международную ассоциацию брокеров коммерческой недвижимости из США, Канады, Великобритании и других стран мира. Ежегодный объем сделок участников ассоциации — $9.2 млрд.</p>
                            </div>
                        </li>
                        <li class="item xs12 s4 swiper-slide">
                            <div class="company-fact">
                                <p class="title h3">1 058 000 +</p>
                                <p class="fact-desc">Портфель заключенных сделок в сегменте складской и индустриальной недвижимости</p>
                            </div>
                        </li>
                        <li class="item xs12 s4 swiper-slide">
                            <div class="company-fact">
                                <p class="title h3">376 000 +</p>
                                <p class="fact-desc">Портфель заключенных сделок в сегменте офисной недвижимости</p>
                            </div>
                        </li>
                    </ul>
                    <div class="swiper-pagination inverted"></div>
                </div>
            </div>
        </div>
    </section>
</section>