{/* страница услуги */}

<section>
    <div class="wrap wrap--small">
        <div class="text-block">
            <h1>{$page.title}</h1>
            {$page.prev_text}
        </div>
        {if $page.full_text != $page.prev_text && trim(strip_tags($page.full_text)) != ''}
            <div class="text-block">{$page.full_text}</div>
        {/if}
    </div>
</section>
<section>
    <div class="wrap">
        {view('includes/form_service_request.tpl')}
    </div>
</section>