<div class="wrap">
    <div class="object-page flex-group flex-gap">
        <div class="object-left item">
            <div data-el="object-image">

                {/* если нет слайдера */}

                {/*
                <div class="image-fit object-gallery__image">
                    <a href="/uploads/images/offices.jpg" data-fancybox="object-gallery"><img src="/uploads/images/offices.jpg" alt=""></a>
                </div>
                */}

                {/* если слайдер */}

                <div class="swiper-outer">
                    <div class="swiper-container has-loader" data-swiper="object-gallery">
                        <button class="btn btn-white btn-shadow" data-btn="slide-plan"><span class="button-inner"><span>Планировка</span><span class="icon--after">{svg_icon('plan')}</span></span></button>
                        <div class="swiper-gallery-loading"></div>
                        <ul class="swiper-wrapper">
                            {for $i = 0; $i < 5; $i++}
                                <li class="swiper-slide">
                                    <div class="image-fit object-gallery__image">
                                        <a href="/uploads/images/offices.jpg" data-fancybox="object-gallery"><img src="/uploads/images/offices.jpg" alt=""></a>
                                    </div>
                                </li>
                            {/for}
                            <li class="swiper-slide" data-slidetype="plan">
                                <div class="image-fit object-gallery__image plan-image">
                                    <a href="/uploads/images/plan.png" data-fancybox="object-gallery"><img class="fit-contain" src="/uploads/images/plan.png" alt=""></a>
                                </div>
                            </li>
                        </ul>
                        <div class="swiper-pagination"></div>
                    </div>
                    <div class="swiper-navigation" data-swiper-nav="object-gallery">
                        <div class="swiper-button swiper-button-prev swiper-button-rounded swiper-button-white"></div>
                        <div class="swiper-button swiper-button-next swiper-button-rounded swiper-button-white"></div>
                    </div>
                </div>
            </div>

            <div class="object-left__block-list">
                <div class="object-left__block block--variants">
                    <h3>Свободные площади</h3>
                    <ul class="floating-tabs">
                        <div class="tab-slider"></div>
                        <li class="tab-item active"><span>Аренда (999)</span></li>
                        <li class="tab-item"><span>Продажа (999)</span></li>
                    </ul>

                    <div class="variants-toolbar">
                        <div class="variants-filter">
                            {view('includes/filter/square.tpl')}
                            {view('includes/filter/price.tpl')}
                        </div>
                        <button data-btn="open-variants-filter" class="btn btn-outline btn-lg visible-xs"><span class="button-inner"><span>Фильтры</span> <span class="svg-icon icon--after">{svg_icon('settings')}</span></span></button>

                        <select name="variants_sort" class="select-sort select-lg align-right">
                            <option value="">По умолчанию</option>
                            <option value="">По возрастанию цены</option>
                            <option value="">По убыванию цены</option>
                            <option value="">По возрастанию цены за м²</option>
                            <option value="">По убыванию цены за м²</option>
                            <option value="">Площадь: по возрастанию</option>
                            <option value="">Площадь: по убыванию</option>
                        </select>
                    </div>

                    <div class="variants-table-outer has-button"> {/* класс для проверки на наличие вариантов */}
                        <table class="variants-table">
                            <thead>
                                <tr>
                                    <th>Площадь</th>
                                    <th>Ставка за все в месяц</th>
                                    <th>Ставка за м² в месяц</th>
                                    <th>Этаж</th>
                                    <th class="hidden-xs"></th>
                                </tr>
                            </thead>
                            <tbody>
                                {for $i = 1; $i < 10; $i++}
                                    <tr {if $i> 5} hidden {/if} class="variant-row" onclick="window.location.href=''">
                                        <td>
                                            <p class="cell-label">Площадь</p>
                                            <a href="/" class="variant-item-square">3696 м<sup>2</sup></a>
                                        </td>
                                        <td>
                                            <p class="cell-label">Ставка за все в месяц</p>
                                            <span class="variant-item-price">4 444 444&nbsp;&#8381;</span>
                                        </td>

                                        <td>
                                            <p class="cell-label">Ставка за м² в месяц</p>
                                            <span>6 300&nbsp;&#8381;</span>
                                        </td>

                                        <td>
                                            <p class="cell-label">Этаж</p>
                                            <span>8</span>
                                        </td>

                                        <td><a href="/" class="btn btn-outline btn-sm btn-variant-link">Посмотреть</a></td>
                                    </tr>
                                {/for}
                            </tbody>
                        </table>
                        <button class="btn btn-primary" data-btn="show-all-variants">
                            <span class="button-inner">
                                <span>Показать еще 999 вариантов</span>
                                <span class="icon--after">
                                    {svg_icon('arrow-down')}
                                </span>
                            </span>
                        </button>
                    </div>
                </div>

                <div class="object-left__block block--props">
                    <h3>Параметры помещения</h3>
                    <ul class="object-props__list flex-group flex-gap">
                        <li class="object-props__item item xs6 s4 m3">
                            <p class="prop-name">Площадь</p>
                            <p class="prop-value">701 м<sup>2</sup></p>
                        </li>
                        <li class="object-props__item item xs6 s4 m3">
                            <p class="prop-name">Этаж</p>
                            <p class="prop-value">8/21</p>
                        </li>
                        <li class="object-props__item item xs6 s4 m3">
                            <p class="prop-name">Планировка</p>
                            <p class="prop-value">open space</p>
                        </li>
                        <li class="object-props__item item xs6 s4 m3">
                            <p class="prop-name">Состояние помещения</p>
                            <p class="prop-value">готово для въезда</p>
                        </li>
                    </ul>
                </div>
                {for $i = 1; $i < 4; $i++}
                    <div class="object-left__block block--props">
                        <h3>Финансовые условия</h3>
                        <ul class="object-props__list flex-group flex-gap">
                            {for $c = 1; $c < 8; $c++}
                                <li class="object-props__item item xs6 s4">
                                    <p class="prop-name">Электричество</p>
                                    <p class="prop-value">оплачивается отдельно</p>
                                </li>
                            {/for}
                        </ul>
                    </div>
                {/for}

                <div class="object-left__block block--features">
                    <h3>Финансовые условия</h3>
                    <ul class="object-props__list flex-group flex-gap">
                        {for $c = 1; $c < 8; $c++}
                            <li class="object-props__item item xs12 s6 lg4 has-icon">
                                <p class="prop-icon">{svg_icon('icons/elevator', true)}</p>
                                <p class="prop-value">Бесшумные скоростные лифты</p>
                            </li>
                            <li class="object-props__item item xs12 s6 lg4 has-icon">
                                <p class="prop-icon">{svg_icon('icons/face-id', true)}</p>
                                <p class="prop-value">Система безопасности face-id</p>
                            </li>
                            <li class="object-props__item item xs12 s6 lg4 has-icon">
                                <p class="prop-icon">{svg_icon('icons/penthouse', true)}</p>
                                <p class="prop-value">Наличие пентхаусов</p>
                            </li>
                        {/for}
                    </ul>
                </div>

                <div class="object-left__block block--location">
                    <h3>Видео</h3>
                    <div class="video-wrap">
                        <a class="video-item image-fit" data-fancybox="video" href="https://www.youtube.com/watch?v=M6Yjcl2iV-o">
                            <img src="https://i3.ytimg.com/vi/M6Yjcl2iV-o/maxresdefault.jpg" alt="">
                        </a>
                    </div>
                </div>

                <div class="object-left__block block--location">
                    <h3>Локация</h3>
                    <p class="title"><a href="/" class="link no-underline">БЦ «Лотте Плаза»</a>, Москва, ЦАО округ, Арбат район, Новинский б-р, д. 8</p>
                    {view('market/includes/metro_list.tpl')}
                    {if $product.lat != "" && $product.lng != ""}
                        <div data-lat="{$product.lat}" data-lng="{$product.lng}">
                            <div class="map object-map" id="yaMap"></div>
                        </div>
                    {/if}
                </div>

                <div class="object-left__block block--description text-block">
                    <h2 class="h1">SEO-заголовок и текст об объекте</h2>
                    <div class="truncated-text">
                        <div data-truncated-text>
                            <p>Предлагается офисное помещение в деловом комплексе Лотте Плаза класса А. Сдается офисное помещение площадью 584 м2. Проведены все необходимые инженерные системы: сигн., противопожарные системы, вентиляция, кондиционирование. К услугам арендаторов такие инфраструктурные объекты, как: кафе, ресторан, банкомат, аптека, отделение банка.</p>

                            <p>Деловой комплекс Лотте Плаза находится в шаговой доступности от станции метро Смоленская. Безопасность бизнес-центра обеспечивают круглосуточная служба охраны, камеры видеонаблюдения. В офисное помещение проведены Интернет и телефония. Аренда осуществляется напрямую без посредника, от собственника и без комиссии.</p>
                        </div>
                    </div>
                    <button class="btn btn-outline btn-lg" data-btn="show-full-text" hidden>Читать полностью</button>

                </div>
            </div>
        </div>

        <div class="object-sidebar item" data-el="object-sidebar">
            <div class="object-side-info" data-el="sidebar-content">
                <div class="side-info__block">
                    <h1>БЦ «Лотте Плаза»</h1>
                    <p><span class="info-text">Класс</span> А</p>
                </div>
                <div class="side-info__block rows">
                    <p class="title">Аренда</p>
                    <p><span class="info-text">Площадь: </span>92 – 1 344 м²</p>
                    <div class="dashed-select-group">
                        <span class="info-text">Ставка за</span>
                        {view('includes/buttons/price_period_toggle.tpl')}
                    </div>
                    <p class="title">от 6300&nbsp;&#8381;</p>
                </div>
                <div class="side-info__block">
                    {view('market/includes/appt_list.tpl')}
                </div>

                <div class="side-info__block">
                    <p class="realty-location">Москва, ЦАО округ, Арбат район, Новинский б-р, д. 8</p>
                    {view('market/includes/metro_list.tpl')}
                </div>
                <div class="side-info__buttons">
                    {view('includes/buttons/contact_object.tpl', ['class' => 'btn btn-primary btn-lg', 'button_text' => 'Записаться на просмотр'])}
                    {view('includes/buttons/wish.tpl', ['id' => $product['external_id'], 'class' => 'btn-lg'])}
                </div>
            </div>
        </div>
    </div>
</div>


<section>
    <div class="wrap">
        {view('includes/form_object_request.tpl')}
    </div>
</section>

{view('includes/promoblocks/promo_tiktok.tpl')}

<section>
    <div class="wrap">
        <h2>Похожие предложения</h2>
        {view('includes/realty_slider.tpl')}
    </div>
</section>