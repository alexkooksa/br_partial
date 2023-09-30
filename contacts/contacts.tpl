{/* если понадобится вдруг верстка без карты, то блоку ниже надо добавить класс no-map вместо has-map*/}
<div class="contacts-page has-map">
    <div class="wrap">
        <div class="flex-group">
            <div class="item xs12 contacts-left">
                <h1 class="h1-large">Контакты{if !in_array($CI->city['city_id'], ['msk','spb'])}, г.&nbsp;{echo $CI->city['city']}{/if}</h1>
                <div class="rows">
                    {if $CI->city['address'] !== ''}
                        <div class="contacts-block">
                            <p class="small-title">Адрес:</p>
                            <p>{$CI->city['address']}</p>
                        </div>
                    {/if}

                    {if $CI->city['phone'] !== ''}
                        <div class="contacts-block">
                            <p class="small-title">Режим работы:</p>
                            <p>
                                Пн-Пт с 9.00 до 19.00
                            </p>
                        </div>
                    {/if}

                    {if $CI->city['phone'] !== ''}
                        <div class="contacts-block">
                            <p class="small-title">Телефон:</p>
                            <p>
                                <a href="tel:{echo preg_replace('~[^0-9]+~','',$CI->city['phone'])}"><span>{$CI->city['phone']}</span></a>
                            </p>
                        </div>
                    {/if}
                    {if siteinfo('siteinfo_adminemail') !== ''}
                        <div class="contacts-block">
                            <p class="small-title">E-mail:</p>
                            <p>
                                <a href="mailto:{echo get_email()}">{echo get_email()}</a>
                            </p>
                        </div>
                    {/if}
                    <div class="contacts-block"><button class="btn btn-primary" onclick="popup('contact', 'Обратная связь')">Напишите нам</button></div>
                </div>
            </div>

            <div class="item xs12 contacts-right">
                <div class="map contacts-map" id="yaMap" data-lat="{$CI->city['lat']}" data-lng="{$CI->city['lng']}"></div>
            </div>
        </div>
    </div>
</div>