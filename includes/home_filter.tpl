<div class="homefilter-outer filter-outer">
    <div class="filter-tabs-row">
        <div class="floating-tabs white-tabs">
            <li class="tab-item active" data-dealtype-id="1"><span>Аренда</span></li>
            <li class="tab-item" data-dealtype-id="2"><span>Продажа</span></li>
        </div>
        <div class="floating-tabs white-tabs">
            <li class="tab-item active" data-offertype=""><span>Офис</span></li>
            <li class="tab-item" data-offertype=""><span>Склад</span></li>
            <li class="tab-item" data-offertype=""><span>Коворкинг</span></li>
        </div>
    </div>
    <div class="homefilter">

        {/* view('includes/filter/offer_type.tpl', ['homepage' => true]) */}
        {/* {view('includes/filter/property_type.tpl', ['homepage' => true])} */}
        {view('includes/filter/square.tpl', ['homepage' => true])}
        {view('includes/filter/places.tpl', ['homepage' => true])}
        {view('includes/filter/price.tpl', ['homepage' => true])}
        <div class="filter-item filter-item--button"><button class="btn btn-white btn-lg" data-target="dictrict">Округ</button></div>
        <div class="filter-item filter-item--button"><button class="btn btn-white btn-lg" data-target="metro">Метро</button></div>

        {/*         <div class="filter-item" data-filter-name="city">
            <button class="btn-pseudoselect" onclick="popup('city', 'Выберите город')">{$CI->city['city']}</button>
    </div> */}
    <div class="homefilter-buttons buttons-group">
        <a class="btn btn-black btn-lg" data-filter-map-submit href="/"><span class="button-inner">{svg_icon('map')}<span class="button-text">На карте</span></span></a>
        <a class="btn btn-primary btn-lg" data-filter-submit href="/">Найти</a>
    </div>
</div>
</div>