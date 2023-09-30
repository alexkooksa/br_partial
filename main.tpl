<!DOCTYPE html>
<html lang="{current_language()}">

<head>
    <meta charset="UTF-8">
    <title>{$site_title}</title>
    <meta name="description" content="{$site_description}">
    <meta name="keywords" content="{$site_keywords}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <base href="{$THEME}">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
    <link rel="stylesheet" href="{$THEME}_css/reset.css">
    <link rel="stylesheet" href="{$THEME}_css/fonts/fonts.css">

    <link rel="stylesheet" href="{$THEME}_css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="_css/multiselect.css">
    {include_tpl('includes/favicon')}
    <script src="_js/modernizr.js"></script>
</head>

<body class="{if mobile()}mobile{/if}{if $CI->core->core_data['data_type'] == 'main'} homepage{else:}innerpage{/if}{if $CI->uri->segment(1) == 'contacts'} contacts{/if}{if !getMobile() && $maplist && $page_type && $page_type == 'm_category'} category{/if}">
    <div class="all-wrap">
        {view('includes/header.tpl')}
        {if $CI->core->core_data['data_type'] == 'main'}
                {view('market/homepage.tpl')}
        {else:}
                {widget('breadcrumbs')}
                {$content}
        {/if}
    </div>
    {view('includes/footer.tpl')}

    <div class="popup-dark" data-el="popup-bg">
        {include_tpl('includes/main_popup_filters')}
        {view('popups/filters.tpl')}
        {view('popups/popup.tpl')}
    </div>
    {if !mobile()}<button class="to-top"></button>{/if}
    <script src="//api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
    <script src="_js/jquery-1.9.1.min.js"></script>
    <script src="_js/ofi.min.js"></script>
    <script src="_js/jquery.maskedinput-1.4.min.js"></script>
    <script src="_js/jquery.nice-select.min.js"></script>
    <script src="_js/jquery.multi-select.min.js"></script>
    <script src="_js/swiper.min.js"></script>
    <script src="_js/jquery.fancybox.min.js"></script>
    <script src="_js/datepicker.min.js"></script>
    {if $CI->uri->segment(1) == 'contacts'}
            <script src="_js/market/map.js"></script>
    {/if}
    <script src="_js/market/market.js"></script>
    {if $page_type == 'm_category' || $CI->core->core_data['data_type'] == 'main'}
            <script src="_js/filter.js"></script>
    {/if}

    {if $page_type && $page_type == 'm_category'}
            {if $maponly || $maplist}
                    <script src="_js/market/map_points.js"></script>
            {/if}
            <script src="_js/market/category.js"></script>
    {/if}

    <script src="_js/script.js"></script>
</body>

</html>