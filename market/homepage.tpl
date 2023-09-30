<div class="intro">
    <div class="wrap">
        <h1 class="intro-title"><em>Коммерческая недвижимость</em> в&nbsp;Москве</h1>
    </div>
</div>

<div class="wrap">
    {view('includes/home_filter.tpl')}
</div>

<section>
    <div class="wrap">
        <h2>Типы недвижимости</h2>
        <ul class="realty-cats-list flex-group flex-gap">
            {for $i = 0; $i < 4; $i++}
                <li class="item xs12 s6">
                    <div class="category-card">
                        <img class="category-card__image object-fit" src="/uploads/images/offices.jpg" alt="">
                        <a class="title" href="/">Офисы</a>
                        <div class="category-card__links">
                            <a href="/" class="btn btn-outline">Аренда</a>
                            <a href="/" class="btn btn-outline">Продажа</a>
                            <a href="/" class="btn btn-outline">Складские комплексы</a>
                            <a href="/" class="btn btn-outline">Ответственное хранение</a>
                        </div>
                    </div>
                </li>
            {/for}
        </ul>
    </div>
</section>

<section>
    <div class="wrap">
        <div class="title--has-nav">
            <h2>Подборка площадей <em>для аренды</em></h2>
        </div>
        {view('includes/realty_slider.tpl')}
    </div>
</section>

<section>
    <div class="wrap">
        <h2>Подборка площадей <em>для покупки</em></h2>
        {view('includes/realty_slider.tpl')}
    </div>
</section>

<section class="section-bg bg-primary services-widget">
    <div class="wrap">
        <h2>Услуги</h2>
        {view('includes/services_all.tpl', ['widget' => true])}
    </div>
</section>

<section>
    <div class="wrap">
        <h2>Популярные объекты: <em>аренда</em></h2>
        {view('includes/realty_slider.tpl')}
    </div>
</section>

<section>
    <div class="wrap">
        <h2>Популярные объекты: <em>продажа</em></h2>
        {view('includes/realty_slider.tpl')}
    </div>
</section>

<section>
    <div class="wrap">
        <div class="title--has-nav">
            <h2>Преимущества</h2>

            <div class="swiper-navigation swiper-nav-top-right" data-swiper-nav="advantages">
                <div class="swiper-button swiper-button-prev swiper-button-rounded"></div>
                <div class="swiper-button swiper-button-next swiper-button-rounded"></div>
            </div>
        </div>
        <div class="swiper-outer">
            <div class="swiper-container" data-swiper="advantages">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide">
                        <div class="advantage-slide">
                            <img class="object-fit" src="_img/slider/01.jpg" alt="">
                            <div class="advantage-slide__desc">
                                <p class="advantage-slide__subtitle">Безопасность</p>
                                <p class="advantage-slide__text">Наши услуги абсолютно бесплатны для арендаторов и покупателей. Никаких комиссий, наценок и переплат.</p>
                            </div>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="advantage-slide">
                            <img class="object-fit" src="_img/slider/02.jpg" alt="">
                            <div class="advantage-slide__desc">
                                <p class="advantage-slide__subtitle">Актуальность</p>
                                <p class="advantage-slide__text">Ежедневно обновляемый каталог проверенных предложений по аренде и продаже коммерческой недвижимости.</p>
                            </div>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="advantage-slide">
                            <img class="object-fit" src="_img/slider/03.jpg" alt="">
                            <div class="advantage-slide__desc">
                                <p class="advantage-slide__subtitle">Удобство</p>
                                <p class="advantage-slide__text">Персональный брокер проконсультирует вас на каждом этапе сделки, предоставит всю необходимую информацию и оперативно организует просмотры.</p>
                            </div>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="advantage-slide">
                            <img class="object-fit" src="_img/slider/04.jpg" alt="">
                            <div class="advantage-slide__desc">
                                <p class="advantage-slide__subtitle">Безопасность</p>
                                <p class="advantage-slide__text">Проверим документы для сделки и проведем анализ рисков: сроки, штрафные санкции, возможные дополнительные платежи.</p>
                            </div>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div class="advantage-slide">
                            <img class="object-fit" src="_img/slider/05.jpg" alt="">
                            <div class="advantage-slide__desc">
                                <p class="advantage-slide__subtitle">ALL-IN-ONE</p>
                                <p class="advantage-slide__text">Поможем выбрать оптимальное предложение, провести переговоры и согласовать лучшие условия. Подготовим планировки и поможем организовать переезд «под ключ».</p>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
</section>

{view('includes/about_prev_text.tpl')}
{view('includes/clients_slider.tpl')}


{$magazine_pages = category_pages(9, 3)}
{if count($magazine_pages) > 0}
    <section>
        <div class="wrap">
            <div class="title--has-nav">
                <h2>Журнал</h2>
                <a href="/analytics" class="btn btn-outline btn-lg">Смотреть все</a>
            </div>
            <div class="swiper-outer">
                <div class="swiper-container" data-swiper="responsive-cards">
                    <ul class="swiper-wrapper magazine-widget flex-group flex-gap">
                        {foreach $magazine_pages as $item}
                            <li class="item xs12 s3 swiper-slide">
                                {$item = $CI->load->module('cfcm')->connect_fields($item, 'page')}
                                {view('includes/magazine_item.tpl', ['item' => $item])}
                            </li>
                        {/foreach}
                    </ul>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
{/if}

<section class="section-bg bg-white section-bordered pb-0">
    <div class="wrap">
        <div class="title--has-nav">
            <h2>Новости</h2>
            <a href="/news" class="btn btn-outline btn-lg">Смотреть все</a>
        </div>
        {widget('latest_news')}
    </div>
</section>
{view('includes/promoblocks/promo_youtube.tpl')}
<section>
    <div class="wrap wrap--small">
        <h2>Готовые подборки</h2>
        <ul class="floating-tabs">
            <div class="tab-slider"></div>
            <li class="tab-item active"><span>Арендовать</span></li>
            <li class="tab-item"><span>Купить</span></li>
        </ul>

        {/* заполнить верстку реальными данными */}
        <div class="togglable-list">
            {for $i = 1; $i < 6; $i++}
                <div class="togglable-list__item">
                    <button class="title togglable-list__button" data-btn="toggle-next">Офисы у метро</button>
                    <div class="item-content" data-el="content">
                        <div class="alphabet-group">
                            {for $c = 1; $c < 13; $c++}
                                <div class="alphabet-group__item">
                                    <p class="alphabet-letter">В</p>
                                    <ul class="alphabet-list">
                                        <li class="alphabet-list__item"><a href="/" class="alphabet-list__link">Войковская</a></li>
                                        <li class="alphabet-list__item"><a href="/" class="alphabet-list__link">Волгоградский проспект</a></li>
                                        <li class="alphabet-list__item"><a href="/" class="alphabet-list__link">Волжская</a></li>
                                        <li class="alphabet-list__item"><a href="/" class="alphabet-list__link">Волоколамская</a></li>
                                        <li class="alphabet-list__item"><a href="/" class="alphabet-list__link">Воробьёвы горы</a></li>
                                        <li class="alphabet-list__item"><a href="/" class="alphabet-list__link">Выставочная</a></li>
                                        <li class="alphabet-list__item"><a href="/" class="alphabet-list__link">Выставочный центр</a></li>
                                        <li class="alphabet-list__item"><a href="/" class="alphabet-list__link">Выхино</a></li>
                                    </ul>
                                </div>
                            {/for}
                        </div>
                    </div>
                </div>
            {/for}
        </div>

    </div>
</section>