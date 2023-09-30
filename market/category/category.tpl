<section class="section-bg bg-light-alt pt-0">
    <!-- категория -->

    <div class="category-filter-outer filter-outer">
        <div class="wrap">
            <div class="category-filter-header visible-xs">
                <span>Фильтры</span>
                <button type="button" data-btn="close-filter"></button>
            </div>
            <div class="category-filter">
                <div class="filter-tabs-row">
                    <div class="floating-tabs white-tabs">
                        <li class="tab-item active" data-dealtype-id="1"><span>Аренда</span></li>
                        <li class="tab-item" data-dealtype-id="2"><span>Продажа</span></li>
                    </div>
                </div>
                <div class="category-filter-row filter-primary">
                    {/* view('includes/filter/offer_type.tpl', ['filter_active' => $filter_active, 'is_res' => is_res($category.id)]) */}
                    {view('includes/filter/property_type.tpl', ['filter_active' => $filter_active, 'is_res' => is_res($category.id)])}

                    {if $category.id == 2}
                        {view('includes/filter/places.tpl', ['filter_active' => $filter_active])}
                    {else:}
                        {view('includes/filter/square.tpl', ['filter_active' => $filter_active])}
                    {/if}

                    {/* было view('includes/filter/price.tpl', ['filter_active' => $filter_active, 'hide_period' => $category['id'] == 2 ? true : null, 'price_in_filter' => $price_in_filter, 'is_res' => is_res($category.id)]) */}

                    {/* стало */}
                    {view('includes/filter/price.tpl', ['filter_active' => $filter_active, 'price_in_filter' => $price_in_filter, 'is_res' => is_res($category.id)])}

                    {view('includes/filter/finish_date.tpl', ['filter_active' => $filter_active, 'price_in_filter' => $price_in_filter, 'is_res' => is_res($category.id)])}
                </div>

                <div class="category-filter-row filter-secondary">
                    {if !in_array($category.id, [2,4,5])}
                        {view('includes/filter/class.tpl', ['filter_active' => $filter_active])}
                    {/if}

                    {if is_res($category.id)}
                        {view('includes/filter/bedrooms.tpl', ['filter_active' => $filter_active, 'bedrooms' => $bedrooms])}
                    {/if}

                    {if $filter_district}
                        <div class="filter-item filter-item--button{if array_key_exists('district', $filter_active)} is-applied{/if}"><button class="btn btn-white" data-target="dictrict"><span class="button-text">Район</span></button></div>
                    {/if}

                    {if $filter_location}
                        <div class="filter-item filter-item--button{if array_key_exists('location', $filter_active)} is-applied{/if}"><button class="btn btn-white" data-target="location"><span class="button-text">Округ</span></button></div>
                    {/if}

                    {if $filter_subway}
                        <div class="filter-item filter-item--button{if array_key_exists('subway', $filter_active)} is-applied{/if}"><button class="btn btn-white" data-target="metro"><span class="button-text">Метро</span></button></div>
                    {/if}

                    {if $filter_direction}
                        <div class="filter-item filter-item--button{if array_key_exists('direction', $filter_active)} is-applied{/if}"><button class="btn btn-white" data-target="direction"><span class="button-text">Направление</span></button></div>
                    {/if}

                    {if $filter_highway}
                        <div class="filter-item filter-item--button{if array_key_exists('highway', $filter_active)} is-applied{/if}"><button class="btn btn-white" data-target="highway"><span class="button-text">Шоссе</span></button></div>
                    {/if}

                    <div class="filter-item">
                        <select name="" id="" class="select-rounded">
                            <option value="">Отделка</option>
                            <option value="">Без отделки</option>
                            <option value="">Черновая</option>
                            <option value="">Чистовая</option>
                        </select>
                    </div>

                    <div class="filter-item xs-w100p">
                        <div class="popover-group rooms-popover-group">
                            <button class="btn btn-white btn-rooms-popover btn-dropdown" data-btn="toggle-popover">Кол-во комнат</button>
                            <div class="popover">
                                <ul class="rounded-options-list">
                                    <li class="rounded-option-item active">Студия</li>
                                    <li class="rounded-option-item active">1</li>
                                    <li class="rounded-option-item">2</li>
                                    <li class="rounded-option-item">3</li>
                                    <li class="rounded-option-item">4</li>
                                    <li class="rounded-option-item">5</li>
                                    <li class="rounded-option-item">6+</li>
                                    <li class="rounded-option-item">Свободная планировка</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="filter-item"><button class="btn btn-black wsnw btn-more-filters disabled" data-target="filters"><img style="width:17px" src="_img/loader-w.svg" /></button></div>

                    <div class="filter-item"><a href="{$current_url}" data-filter-submit class="btn btn-primary btn-apply-filter">Показать</a></div>

                    {if count($filter_result) > 0}<div class="filter-item"><a href="{site_url($category.full_url)}" class="btn btn-outline on-grey btn-clear-filter"><span class="button-inner"><span>Сбросить все</span><span class="icon--after">{svg_icon('close')}</span></span></a></div>{/if}
                </div>

                {/* view('includes/buttons/save_search.tpl', ['current_url' => $current_url]) */}
            </div>
        </div>
    </div>
    <div class="wrap" data-map="{$map}" data-current-url="{$current_url}">
        <div class="h1-wrap flex-group">
            <h1>{$category.name}</h1>

            {if $category.short_desc && $category.short_desc != "" && !getMobile()}<p class="snippet">{echo strip_tags($category.short_desc, '<a>')}</p>{/if}
        </div>
        {if $totalCount > 0}<p class="light-text category-counter">Найдено {$totalCount} {echo plural($totalCount, $plural_names)}</p>{/if}

        <div class="category-toolbar-xs visible-xs">
            <button data-btn="open-filter" class="btn btn-primary btn-lg"><span class="button-inner"><span>Фильтры</span> <span class="svg-icon icon--after">{svg_icon('settings')}</span></span></button>

            {/* if !getMobile()}
            {if !isset($_GET['view']) || (isset($_GET['view']) && $_GET['view'] == 'default')}
            <a href="{$current_url}?view=maponly">Смотреть на карте</a>
            {else:}
            <a href="{$current_url}?view=default">Смотреть списком</a>
            {/if}
            {/if */}
        </div>

        {if $totalCount > 0}
            <div class="category-toolbar flex-group">
                {/*}<span style="display: inline-block; margin: 5px 10px 5px 0; vertical-align: middle;">Показать</span>{*/}
                    <div {if !isset($_COOKIE['tooltip-category-view'])}class="tooltip tooltip-controllable" {/if}> <ul class="floating-tabs">
                        <div class="tab-slider"></div>
                        <li class="tab-item" data-tab onclick="switch_groupby('{$current_url}?groupby=product')"><span>Объекты</span></li>
                        <li class="tab-item" {if $groupby=='variant' }tab-selected{/if} data-tab onclick="switch_groupby('{$current_url}?groupby=variant')"><span>Предложения</span></li>
                        </ul>
                        {if !isset($_COOKIE['tooltip-category-view']) && $groupby == 'variant'}
                                <span class="tooltip-text" data-tooltip="category-view"><button type="button" data-close-tooltip></button>Вы можете сгруппировать результаты</span>
                        {/if}
                    </div>

                    {if !getMobile()}

                            {/* <span class="hidden-xs category-tab-label">{tlang('View as')}</span> */}
                            <div class="floating-tabs hidden-xs btn-view-group">
                                <a data-tab class="tab-item {if !$maplist && !$maponly}active {/if}" {if !$maplist && !$maponly}tab-selected {/if} href="{$current_url}?view=default"><span>Списком</span></a>
                                <a data-tab class="tab-item {if $maplist}active {/if}" {if $maplist}tab-selected {/if} href="{$current_url}?view=maplist"><span>Список + карта</span></a>
                                <a data-tab class="tab-item {if $maponly}active {/if}" {if $maponly}tab-selected {/if} href="{$current_url}?view=maponly"><span>На карте</span></a>
                            </div>
                    {/if}


                    {/* <a href="{$current_url}?view=maponly" class="visible-xs btn--icon-only btn-outline btn-md btn-on-map">{svg_icon('map')}</a> */}

                    <select name="category_sort" class="select-sort align-right">
                        <option value="">По умолчанию</option>
                        <option value="">По возрастанию цены</option>
                        <option value="">По убыванию цены</option>
                        <option value="">По возрастанию цены за м²</option>
                        <option value="">По убыванию цены за м²</option>
                        <option value="">Площадь: по возрастанию</option>
                        <option value="">Площадь: по убыванию</option>
                    </select>
                    <a href="{$current_url}?view=default" class="visible-xs btn btn-outline w100p btn-default-view">Смотреть списком</a>
                </div>
        {/if}

        {if count($filter_result)> 0}
                <div class="filter-result-data">
                    {foreach $filter_result as $k => $v}
                            <button onclick="erase_filter('{$k}')" class="filter-result-item">{$v}</button>
                    {/foreach}
                    <button onclick="window.location.href='/{$category.full_url}'" class="filter-result-item">Сбросить все</button>
                </div>
        {/if}
        {if count($products) > 0}
                {if $maponly}
                        <div id="yaMap" class="map category-map map-loading"></div>
                {else:}
                        {if $maplist}
                                <div class="map-list flex-group flex-gap" data-layout="{$layout}">
                                    <div class="item realty-list-outer">
                                {/if}
                                <div class="realty-list">
                                    {foreach $products as $ip => $product}
                                            {if $groupby == 'variant'}
                                                    {view('market/category/category_variant_item.tpl', ['current_url' => $_SERVER['REQUEST_URI'], 'product' => $product, 'city' => $city, 'maplist' => $maplist])}
                                            {else:}
                                                    {view('market/category/category_item.tpl', ['product' => $product, 'maplist' => $maplist])}

                                            {/if}
                                            {if $ip == 2 && !$CI->is_ae}
                                                    {view('market/includes/banner_ae2.tpl')}
                                            {/if}

                                    {/foreach}
                                </div>
                                {if $totalCount > $limit}
                                        <div data-loader data-more-products><img src="_img/loader.svg" /></div>
                                        <div class="centered"><button onclick="show_more({$category.id}, '{$current_url}', '{$groupby}', this)" data-limit="{$limit}" data-offset="{$offset}" class="btn btn-primary btn-show-more-variants">Показать еще</button></div>
                                {/if}
                                {if $pagination}
                                        {$pagination}
                                {/if}
                                {if $maplist}
                                    </div>
                                    {if !getMobile()}
                                            <div class="item category-map-outer">
                                                <div id="yaMap" class="map category-map map-loading"></div>
                                            </div>
                                    {/if}
                                </div>
                        {/if}
                {/if}
        {else:}
                {if count($filter_result) > 0}

                        <p class="msg msg-info">Мы очень старались, но ничего не нашли с такими параметрами. Пожалуйста, измените условия фильтрации</p>
                {else:}
                        <p class="msg msg-info">Раздел усердно заполняется</p>
                {/if}
        {/if}
        {/*}
            <hr>
            <div class="text-block gradient-text">
                <div data-gradient-inner>
                    <p>На данный момент в аренду сдается 3452 офиса в 4276 бизнес-центрах. Площадь офисов варьируется от 42 до 70400 м2. Стоимость аренды варьируется от 350 до 58333 руб. за квадратный метр.</p>
                </div>
            </div>
            {*/}
        {if $category.short_desc && $category.short_desc != "" && getMobile()}<p>{strip_tags($category.short_desc, '<a>')}</p>{/if}
        {if $category.description != ''}
                <br />
                <div class="text-block">{$category.description}</div>
        {/if}
        {if count($seolinks) > 0 && !$CI->is_kz}
                <br />
                <h2>Популярные запросы</h2>
                <ul class="floating-tabs" data-tabs-name="seolinks">
                    <div class="tab-slider"></div>
                    {$i=0}
                    {foreach $seolinks as $g => $sdata}
                            <li data-tab="sg{$i}" class="tab-item"><span>{$g}</span></li>
                            {$i++}
                    {/foreach}
                </ul>
                <div class="content-list text-block" data-tabs-name="seolinks">
                    {$i=0}
                    {foreach $seolinks as $g => $sdata}
                            <div class="tab-content{if $i < 1} active{/if}" data-tab-content="sg{$i}">
                                <ul class="column-list{if count($sdata) > 9} c3{else:}{if count($sdata) > 5} c2{/if}{/if}">
                                    {foreach $sdata as $link}
                                            <li><a href="{site_url($link['url'])}" target="_blank">{$link.link_name}</a></li>
                                    {/foreach}
                                </ul>
                            </div>
                            {$i++}
                    {/foreach}
                </div>
        {/if}
    </div>
</section>