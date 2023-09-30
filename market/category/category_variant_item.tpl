<div class="realty-item is-variant">
    {view('includes/buttons/wish.tpl', ['id' => $product['external_id'], 'wishlist' => $wishlist])}
    {view('market/category/realty_item_image.tpl')}
    <div class="realty-item__content">
        <p class="small-info">Аренда офиса</p>
        <a href="/">
            <p class="title realty-item__title">#{$i} - <span class="realty-item__square">200 м<sup>2</sup></span><span class="realty-item__price">127 600 ₽/мес</span></p>
            <div class="realty-item__tags">
                <span class="realty-tag">999 ₽/м<sup>2</sup></span>
                <span class="realty-tag">Класс А</span>
                <span class="realty-tag">Без комиссии</span>
                <span class="realty-tag">Включая НДС</span>
            </div>
        </a>
        <div class="realty-item__footer">
            <div class="realty-item_footer-left">
                <a href="/" class="realty-item__parent-link">Бизнес-центр «Фабрика 1830»</a>
                <p class="realty-location">Выводим адрес без района</p>
                {view('market/includes/metro_list.tpl')}
            </div>
            {view('market/category/realty_item_buttons.tpl')}
        </div>
    </div>
</div>