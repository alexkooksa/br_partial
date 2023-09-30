{if !($CI->is_kz || $CI->is_ae)}<div class="menu-btn-choose-city visible-xs"><button class="e-icon-map-w btn-dashed btn-dashed-white " onclick="popup('city', 'Выберите город')"><span>{$CI->city['city']}</span></button></div>{/if}
<ul class="hidden-menu-block">
	{if $CI->is_kz || $CI->is_ae}
		{if $CI->is_ae}<li class="menu-item"><a class="menu-link" href="/apartments">Апартаменты</a></li>{/if}
		<li class="menu-item has-submenu">
			<span class="menu-link" data-open-submenu>Офисы</span>
			<ul class="submenu">
				<li class="submenu-item"><a class="submenu-link" href="/arenda-ofisa">Аренда офиса</a></li>
				<li class="submenu-item"><a class="submenu-link" href="/prodazha-ofisa">Продажа офиса</a></li>
			</ul>
		</li>
	{else:}
		<li class="menu-item has-submenu">
			<span class="menu-link" data-open-submenu>Аренда</span>
			<ul class="submenu">
				<li class="submenu-item"><a class="submenu-link" href="/arenda-ofisa">Офисы</a></li>
				<li class="submenu-item"><a class="submenu-link" href="/arenda-sklada">Склады</a></li>
				<li class="submenu-item"><a class="submenu-link" href="/coworking/arenda">Коворкинг</a></li>
			</ul>
		</li>
		<li class="menu-item has-submenu">
			<span class="menu-link" data-open-submenu>Продажа</span>
			<ul class="submenu">
				<li class="submenu-item"><a class="submenu-link" href="/prodazha-ofisa">Офисы</a></li>
				<li class="submenu-item"><a class="submenu-link" href="/prodazha-sklada">Склады</a></li>
			</ul>
		</li>
	{/if}
	
</ul>
<ul class="hidden-menu-block">
    <li class="menu-item">
        <a class="menu-link" href="/biznes-centr">Бизнес-центры</a>
    </li>
	{if !($CI->is_kz || $CI->is_ae)}
    <li class="menu-item">
        <a class="menu-link" href="/warehouse">Складские комплексы</a>
    </li>
	{/if}
	{if !$CI->is_kz}
		<li class="menu-item">
			<a class="menu-link" href="/coworking">Коворкинги</a>
		</li>
	{/if}
</ul>
<ul class="hidden-menu-block">
    <li class="menu-item">
        <a class="menu-link has-counter" href="/wishlist">Избранные объекты<span class="rounded-counter" data-wish-counter>0</span></a>
    </li>
    {/*}
    <li class="menu-item">
        <a class="menu-link has-counter" href="/searchlist">Сохраненный поиск<span class="rounded-counter" data-search-counter>0</span></a>
    </li>
    {*/}
</ul>
{/*}
<ul class="hidden-menu-block">
	<li class="menu-item">
		<a class="menu-link login-link" href="/market/account"><span class="e-icon-login-green icon-after">Войти в ЛК</span></a>
	</li>
</ul>
{*/}