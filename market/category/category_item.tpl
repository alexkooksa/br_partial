<div class="realty-item is-object">
    {view('includes/buttons/wish.tpl', ['id' => $product['external_id'], 'wishlist' => $wishlist])}
    {view('market/category/realty_item_image.tpl')}
    <div class="realty-item__content">
        <a href="{site_url($product.full_url)}">
            <p class="title realty-item__title">Красивый бизнес-центр</p>
            <div class="realty-object-info">
                <span>Класс B+</span>
                <span>площадь: по запросу</span>
                <!-- 271 – 2 293 м² -->
                <span>стоимость: по запросу</span>
                <!-- 4 167 – 4 500 ₽/м2 в месяц -->
            </div>
            <div class="realty-item__tags">
                <span class="realty-tag">999 ₽/м<sup>2</sup></span>
                <span class="realty-tag">Класс А</span>
                <span class="realty-tag">Без комиссии</span>
                <span class="realty-tag">Включая НДС</span>
            </div>
        </a>
        {view('market/includes/appt_list.tpl')}
        <div class="realty-item__footer">
            <div class="realty-item_footer-left">
                <p class="realty-item__address">Петроградский район, Льва Толстого ул. 9</p>
                <p class="realty-location">Какой-нибудь район</p>
                {view('market/includes/metro_list.tpl')}
            </div>
            {view('market/category/realty_item_buttons.tpl')}
        </div>
    </div>
</div>