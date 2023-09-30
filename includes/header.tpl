<div class="header-dark-overlay"></div>
<header>
    <div class="header-top">
        <div class="wrap">
            <ul class="top-menu">
                {load_menu('top_menu')}
                {if siteinfo('youtube') !== ''}
                    <li class="menu-item">
                        <a class="menu-link" target="_blank" rel="nofollow" href="{siteinfo('youtube')}">YouTube</a>
                    </li>
                {/if}
            </ul>
            <div class="header-toolbar">
                {view('includes/buttons/wish_counter.tpl')}
                {view('includes/buttons/search_open.tpl')}
            </div>
        </div>
    </div>
    <div class="header-main">
        <div class="wrap">
            <a href="/" class="header-logo">
                <svg class="header-logo__icon" width="33" height="32" aria-hidden="true" viewBox="0 0 33 32">
                    <g id="logo-icon">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M26.812 0H5.358a5.38 5.38 0 0 0-3.793 1.564A5.326 5.326 0 0 0 0 5.341v21.33a5.3 5.3 0 0 0 1.568 3.77A5.355 5.355 0 0 0 5.358 32h21.454a5.378 5.378 0 0 0 3.79-1.56 5.325 5.325 0 0 0 1.567-3.77V5.33a5.301 5.301 0 0 0-1.567-3.77A5.356 5.356 0 0 0 26.812 0ZM4.279 9.722h7.152c2.463 0 4.597.915 4.597 3.466 0 1.367-.658 2.157-1.862 2.778 1.692.542 2.554 1.671 2.554 3.376 0 1.276-.476 2.338-1.396 3.094-1.214 1.005-2.588 1.039-4.132 1.039H4.28V9.722Zm3.644 2.744v2.665h2.656c1.26 0 1.84-.407 1.84-1.333 0-1.14-.943-1.332-1.942-1.332H7.923Zm0 5.025v3.15h2.94c1.113 0 2.112-.215 2.112-1.57 0-1.332-1.056-1.58-2.214-1.58H7.923Zm10.761-7.77h3.837c2.656.035 4.767 1.31 4.79 3.987 0 1.58-.749 2.721-2.225 3.353.908.283 1.555.881 1.817 1.773l.003.012c.213.724.259.88.44 2.901l.017.208c.044.549.084 1.047.448 1.509h-3.814c-.274-.61-.323-1.382-.37-2.106-.017-.268-.034-.53-.062-.774-.181-1.614-.828-2.235-2.565-2.235h-2.305v-2.552h2.645c1.226 0 2.26-.249 2.26-1.694 0-1.084-.75-1.603-2.305-1.603h-2.61V9.722Z" fill="#EB3440" />
                    </g>
                </svg>
                <svg class="header-logo__text" width="147" height="16" aria-hidden="true" viewBox="0 0 179 18">

                    <g id="logo-text">
                        <path d="M.83 14.334V3.847h3.61c.914 0 1.66.281 2.24.842.59.561.884 1.246.884 2.053 0 .867-.324 1.541-.972 2.023 1.12.463 1.68 1.295 1.68 2.496 0 .877-.32 1.61-.958 2.201-.629.581-1.435.872-2.417.872H.83Zm1.724-1.58h2.299c.55 0 .977-.139 1.282-.414.304-.276.457-.64.457-1.093 0-.443-.153-.803-.457-1.078-.305-.286-.732-.429-1.282-.429H2.554v3.013Zm0-4.49h1.798c.462 0 .83-.134 1.105-.4.275-.265.413-.605.413-1.019 0-.393-.138-.728-.413-1.004-.275-.276-.643-.413-1.105-.413H2.554v2.835ZM9.39 14.334V3.847h3.772c.962 0 1.729.281 2.298.842.58.552.87 1.265.87 2.142 0 .738-.207 1.349-.62 1.831-.402.473-.986.793-1.753.96l3.89 4.712h-2.121l-3.832-4.609h-.78v4.609H9.388Zm1.723-6.115h1.842c.511 0 .914-.118 1.209-.354.294-.247.442-.591.442-1.034 0-.443-.148-.783-.442-1.02-.295-.246-.698-.369-1.209-.369h-1.842V8.22ZM18.15 14.334V3.847h1.724v10.487H18.15ZM26.505 14.51c-1.562 0-2.863-.516-3.905-1.55-1.04-1.044-1.562-2.334-1.562-3.87s.516-2.82 1.548-3.854c1.041-1.044 2.343-1.566 3.905-1.566 1.149 0 2.175.31 3.08.93.903.62 1.527 1.404 1.87 2.349h-1.96c-.274-.483-.682-.872-1.222-1.167a3.573 3.573 0 0 0-1.768-.443c-1.081 0-1.97.36-2.668 1.078-.697.719-1.046 1.61-1.046 2.673 0 1.064.349 1.955 1.046 2.674.698.718 1.592 1.078 2.682 1.078.953 0 1.734-.276 2.343-.827.61-.552.973-1.28 1.09-2.186h-3.58V8.204h5.349c.187 1.95-.23 3.49-1.253 4.623-1.011 1.123-2.328 1.684-3.949 1.684ZM32.909 14.334V3.847h1.724V8.19h5.172V3.847h1.724v10.487h-1.724V9.829h-5.172v4.505h-1.724ZM45.4 14.334V5.5h-3.035V3.847h7.81v1.654h-3.05v8.832H45.4ZM53.248 14.334V3.847h3.772c.963 0 1.729.281 2.299.842.58.552.869 1.265.869 2.142 0 .738-.206 1.349-.619 1.831-.403.473-.987.793-1.753.96l3.89 4.712h-2.122l-3.831-4.609h-.781v4.609h-1.724Zm1.724-6.115h1.842c.51 0 .913-.118 1.208-.354.295-.247.442-.591.442-1.034 0-.443-.147-.783-.442-1.02-.295-.246-.698-.369-1.208-.369h-1.842V8.22ZM62.008 14.334V3.847h1.724v10.487h-1.724ZM70.349 14.51c-1.562 0-2.864-.516-3.905-1.55-1.032-1.044-1.547-2.334-1.547-3.87s.515-2.82 1.547-3.854c1.041-1.044 2.343-1.566 3.905-1.566 1.238 0 2.318.355 3.242 1.063.933.7 1.532 1.576 1.797 2.63h-1.856c-.226-.601-.629-1.089-1.209-1.463-.58-.374-1.237-.561-1.974-.561-1.08 0-1.97.36-2.667 1.078-.698.719-1.047 1.61-1.047 2.673 0 1.064.35 1.955 1.047 2.674.697.718 1.586 1.078 2.667 1.078.737 0 1.395-.187 1.974-.561.58-.375.983-.862 1.209-1.463h1.856c-.265 1.054-.864 1.935-1.797 2.644-.924.7-2.004 1.049-3.242 1.049ZM76.393 14.334V3.847h1.724V8.19h5.172V3.847h1.724v10.487h-1.724V9.829h-5.172v4.505h-1.724ZM100.251 14.51c-1.562 0-2.863-.516-3.904-1.55-1.032-1.044-1.548-2.334-1.548-3.87s.516-2.82 1.548-3.854c1.04-1.044 2.343-1.566 3.904-1.566 1.238 0 2.319.355 3.242 1.063.934.7 1.533 1.576 1.798 2.63h-1.857c-.226-.601-.628-1.089-1.208-1.463-.58-.374-1.238-.561-1.975-.561-1.08 0-1.97.36-2.667 1.078-.697.719-1.046 1.61-1.046 2.673 0 1.064.349 1.955 1.046 2.674.698.718 1.587 1.078 2.667 1.078.737 0 1.395-.187 1.975-.561.58-.375.982-.862 1.208-1.463h1.857c-.265 1.054-.864 1.935-1.798 2.644-.923.7-2.004 1.049-3.242 1.049ZM111.04 12.842c1.022 0 1.886-.365 2.594-1.093.707-.729 1.061-1.615 1.061-2.659 0-1.043-.354-1.93-1.061-2.658-.708-.729-1.572-1.093-2.594-1.093-1.031 0-1.901.364-2.608 1.093-.707.729-1.061 1.615-1.061 2.658 0 1.044.354 1.93 1.061 2.659.707.728 1.577 1.093 2.608 1.093Zm3.831.088c-1.051 1.054-2.328 1.58-3.831 1.58-1.503 0-2.78-.521-3.831-1.565-1.051-1.053-1.577-2.338-1.577-3.855 0-1.516.526-2.796 1.577-3.84 1.051-1.053 2.328-1.58 3.831-1.58 1.503 0 2.78.527 3.831 1.58 1.052 1.054 1.577 2.334 1.577 3.84 0 1.507-.525 2.787-1.577 3.84ZM117.603 14.334V3.847h3.772c.963 0 1.729.281 2.299.842.58.552.87 1.265.87 2.142 0 .738-.207 1.349-.619 1.831-.403.473-.988.793-1.754.96l3.89 4.712h-2.122l-3.831-4.609h-.781v4.609h-1.724Zm1.724-6.115h1.842c.511 0 .914-.118 1.208-.354.295-.247.442-.591.442-1.034 0-.443-.147-.783-.442-1.02-.294-.246-.697-.369-1.208-.369h-1.842V8.22ZM126.364 14.334V3.847h6.218v1.654h-4.494v2.703h3.536v1.64h-3.536v4.49h-1.724ZM131.613 14.334l4.568-10.487h1.503l4.568 10.487h-1.797l-1.194-2.748h-4.686l-1.179 2.748h-1.783Zm5.305-8.153-1.68 3.87h3.36l-1.68-3.87ZM147.278 14.51c-1.562 0-2.863-.516-3.904-1.55-1.032-1.044-1.548-2.334-1.548-3.87s.516-2.82 1.548-3.854c1.041-1.044 2.342-1.566 3.904-1.566 1.238 0 2.319.355 3.242 1.063.933.7 1.533 1.576 1.798 2.63h-1.857c-.226-.601-.628-1.089-1.208-1.463-.58-.374-1.238-.561-1.975-.561-1.08 0-1.969.36-2.667 1.078-.697.719-1.046 1.61-1.046 2.673 0 1.064.349 1.955 1.046 2.674.698.718 1.587 1.078 2.667 1.078.737 0 1.395-.187 1.975-.561.58-.375.982-.862 1.208-1.463h1.857c-.265 1.054-.865 1.935-1.798 2.644-.923.7-2.004 1.049-3.242 1.049ZM156.054 14.334V3.847h1.724v10.487h-1.724ZM168.726 14.334h-1.503l-5.894-7.548v7.548h-1.724V3.847h1.503l5.879 7.533V3.847h1.739v10.487ZM172.587 14.334V5.5h-3.036V3.847h7.81v1.654h-3.05v8.832h-1.724ZM177.718 14.452c-.344 0-.644-.123-.899-.37a1.276 1.276 0 0 1-.369-.915c0-.345.123-.645.369-.901.255-.256.555-.384.899-.384.353 0 .653.128.898.384.256.256.384.556.384.9 0 .355-.128.66-.384.916a1.22 1.22 0 0 1-.898.37ZM89.598 17.616V.384h1.415v17.23h-1.415Z" fill="#1A142D" />
                    </g>

                </svg>
            </a>
            <nav data-el="nav">
                <ul class="main-menu">
                    <li class="menu-item has-submenu">
                        <a href="/" class="menu-link" data-btn="open-submenu"><span class="menu-link-inner">Аренда</span></a>
                        <div class="submenu-outer" data-submenu>
                            <div class="submenu-header"><button class="btn-submenu-back">{svg_icon('arrow-left')}</button>
                                <p class="title">Аренда</p>
                            </div>
                            <ul class="wrap submenu">

                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Офисы
                                    </a>
                                </li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Коворкинги
                                    </a>
                                </li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Москва-Сити
                                    </a>
                                </li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Бизнес-центры
                                    </a>
                                </li>
                                <li class="menu-break"></li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Склады
                                    </a>
                                </li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Складские комплексы
                                    </a>
                                </li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Ответственное хранение
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="menu-item has-submenu">
                        <a href="/" class="menu-link" data-btn="open-submenu"><span class="menu-link-inner">Продажа</span></a>
                        <div class="submenu-outer" data-submenu>
                            <div class="submenu-header"><button class="btn-submenu-back">{svg_icon('arrow-left')}</button>
                                <p class="title">Продажа</p>
                            </div>
                            <ul class="wrap submenu">
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Офисы
                                    </a>
                                </li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Москва-Сити
                                    </a>
                                </li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Бизнес-центры
                                    </a>
                                </li>
                                <li class="menu-break"></li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Склады
                                    </a>
                                </li>
                                <li class="submenu-item">
                                    <a href="/" class="submenu-link">
                                        Складские комплексы
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="menu-item has-submenu">
                        <a href="{site_url()}" class="menu-link" data-btn="open-submenu"><span class="menu-link-inner">Услуги</span></a>
                        <div class="submenu-outer" data-submenu>
                            <div class="submenu-header"><button class="btn-submenu-back">{svg_icon('arrow-left')}</button>
                                <p class="title">Услуги</p>
                            </div>
                            {$services = get_sub_categories(3)}
                            <ul class="wrap">
                                {foreach $services as $i => $subcat}
                                    <div class="submenu-block">
                                        <p class="submenu-title"><a href="{site_url($subcat.path_url)}">{$subcat.name}</a></p>

                                        {$services_pages = category_pages($subcat.id)}
                                        <ul class="submenu">
                                            {foreach $services_pages as $item}
                                                <li class="submenu-item">
                                                    <a href="{site_url($item.full_url)}" class="submenu-link">{$item.title}</a>
                                                </li>
                                            {/foreach}
                                        </ul>

                                    </div>
                                {/foreach}
                            </ul>
                        </div>
                    </li>
                </ul>

                <noindex>
                    <div class="nav-group">
                        <div class="wrap">
                            <div class="nav-group__top">
                                {view('includes/buttons/wish_counter.tpl', ['btn_mob' => true])}
                                {view('includes/buttons/search_open.tpl', ['btn_mob' => true])}
                                {view('includes/city_popover.tpl')}
                            </div>
                            <div class="nav-group__bottom">
                                {view('includes/buttons/callback.tpl', ['icon_only' => true])}
                                {view('includes/buttons/phone.tpl')}
                            </div>
                        </div>
                    </div>
                </noindex>

            </nav>
            <div class="header-main__right">

                {view('includes/buttons/callback.tpl', ['icon_only' => true])}
                {view('includes/buttons/phone.tpl', ['icon_only' => true])}

                <button class="btn-menu-m" type="button" data-btn="toggle-nav">
                    <span class="btn-menu-box">
                        <span class="btn-menu-inner"></span>
                    </span>
                </button>

                {view('includes/buttons/callback.tpl')}
                {view('includes/buttons/phone.tpl')}
                {view('includes/city_popover.tpl')}
            </div>
        </div>
    </div>


    <div class="search-group">
        <form class="search-form" action="/market/search">
            <input data-search-ac class="input-search" type="text" name="text" placeholder="Поиск по объекту, району или метро">
            <button class="btn-close-search" type="button" data-btn="close-search"></button>
            <div class="search-result">
                <div class="loader"></div>
                <p data-search-result-placeholder class="light-text">Начните вводить название объекта</p>

                <div data-search-result-list>
                </div>
                <div class="search-result-footer"><button class="btn btn-primary w100p">Все результаты поиска</button></div>
            </div>
        </form>
    </div>

</header>