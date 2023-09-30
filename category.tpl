<div class="wrap">
    <h1>{echo $category.meta_h1 == '' ? $category.name : $category.meta_h1}</h1>

    {if count($pages) > 0}
        {foreach $pages as $item}
                <a href="{$item.full_url}">{$item.title}</a>
                <hr>
        {/foreach}
    {/if}
</div>
