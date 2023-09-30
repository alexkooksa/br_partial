{/* подкатегория услуг */}

<div class="wrap">
    <h1>{$category.name}</h1>
    {if count($pages) > 0}
        <ol class="service-list flex-group flex-gap">
            {foreach $pages as $item}
                {view('includes/service_item.tpl',  ['item' => $item])}
            {/foreach}
        </ol>
    {/if}
</div>

<section>
    <div class="wrap">
        {view('includes/form_service_request.tpl')}
    </div>
</section>

{if trim(strip_tags($category.short_desc)) != ''}
    <section class="text-block">
        <div class="wrap">{$category.short_desc}</div>
    </section>
{/if}