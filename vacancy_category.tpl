<section>
    <div class="wrap wrap--small">
        <h1 class="h1-large">{$category.name}</h1>
        {if $category.short_desc !== ''}
            <div class="text-block">
                {$category.short_desc}
            </div>
        {/if}
    </div>
</section>

<section>
    <div class="wrap wrap--small">
        {if count($pages) > 0}
            <h2>Вакансии</h2>
            <div class="filter-tabs">
                <div class="tab-item active"><span>Все</span></div>
                <div class="tab-item"><span>Маркетинг</span></div>
                <div class="tab-item"><span>PR</span></div>
                <div class="tab-item"><span>Консалтинг</span></div>
            </div>
            <ul class="vacancy-list">
                {foreach $pages as $item}
                    <li class="vacancy-item">
                        <a class="vacancy-link title" href="{site_url($item.full_url)}">{$item.title}</a>
                    </li>
                {/foreach}
            </ul>
        {else:}
            <p>Открытых вакансий пока нет</p>
        {/if}
    </div>
</section>

<section>
    <div class="wrap">{view('includes/form_vacancy.tpl', ['in_category' => true])}</div>
</section>