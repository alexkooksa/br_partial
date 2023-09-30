<div class="breadcrumbs-wrap">
    <div class="wrap">
        <ul class="breadcrumbs " itemscope itemtype="http://schema.org/BreadcrumbList">
            <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" href="{site_url('')}">
                    <span itemprop="name">{tlang('Home')}</span>
                </a>
            </li>
            <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <span itemprop="item"><span itemprop="name">Поиск</span></span>
            </li>
        </ul>
    </div>
</div>
<section class="section-bg bg-light-alt">
    <div class="wrap">
        <h1>Поиск по сайту</h1>
        <div class="ui-block">
            <form class="search-form-onpage" method="GET" action="/market/search">
                <input class="search-input" type="text" name="text" autocomplete="off" value="{if $_GET['text'] && $_GET['text'] != ''}{echo htmlspecialchars($_GET['text'])}{/if}" placeholder="Поиск по сайту" />
                <button class="search-submit btn btn-secondary btn-rounded-10"></button>
            </form>
        </div>
        {if $totalCount > 0}
            <div class="category-toolbar ui-block flex-group aic">
                <div>
                    <span>Мы нашли {$totalCount} {echo plural($totalCount, ['объект','объекта','объектов'])}</span>

                </div>
            </div>
        {/if}
        <ul class="realty-list" data-layout="default">
            {foreach $products as $product}
                {view('market/category/category_item.tpl', ['product' => $product, 'maplist' => $maplist])}
            {/foreach}
        </ul>
        {if $pagination}
            {$pagination}
        {/if}
    </div>
</section>