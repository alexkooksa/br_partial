{/* корневая категория услуг */}

<div class="wrap">
    <h1>{$category.name}</h1>
    {view('includes/services_all.tpl')}
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