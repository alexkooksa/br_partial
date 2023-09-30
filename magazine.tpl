<section>
    <div class="wrap">
        <h1>{$category.name}</h1>
        <ul class="flex-group flex-gap">
            {foreach $pages as $item}
                <li class="item xs12 s6 m4">
                    {view('includes/magazine_item.tpl', ['item' => $item])}
                </li>
            {/foreach}
        </ul>
        {if $pagination}
            {$pagination}
        {/if}
    </div>
</section>