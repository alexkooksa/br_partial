<section>
    <div class="wrap">
        <h1>{$category.name}</h1>

        {/*
        */}
        <div class="filter-tabs">
            <div class="tab-item active"><span>2022</span></div>
            <div class="tab-item"><span>2021</span></div>
            <div class="tab-item"><span>2020</span></div>
            <div class="tab-item"><span>2019</span></div>
            <div class="tab-item"><span>2018</span></div>
        </div>

        {if count($pages) > 0}
            <ul class="news-list news-widget flex-group flex-gap">
                {foreach $pages as $item}
                    <li class="item xs12 s6 m4">
                        {view('includes/news_item.tpl', ['item' => $item])}
                    </li>
                {/foreach}
            </ul>
        {else:}
            <p>Информация скоро появится</p>
        {/if}
        {if $pagination}
            {$pagination}
        {/if}
    </div>
</section>