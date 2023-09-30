<div class="page-cover" {if $page.field_image && $page.field_image !== ''}style="background-image: url('{$page.field_image}');" {/if}>
    <div class="wrap flex-group aic">
        <div class="item xs12 s6 m8 page-cover-desc">
            <h1>{$page.title}</h1>
            <p class="text-block">{strip_tags($page.prev_text)}</p>
        </div>
        <div class="item xs12 s6 m4 page-cover-form">
            {view('popups/contact.tpl', ['captcha' => true, 'popup' => false])}
        </div>
    </div>
</div>
<section>
    <div class="wrap">
        <div class="ui-block block-horizontal flex-group">
            <div class="block-image">
                <img class="rounded" src="/uploads/images/cremap.png" alt="">
            </div>
            <div class="block-desc text-block">
                {$page.full_text}
                <button class="btn btn-secondary btn-rounded btn-shadow-secondary" onclick="popup('partners', 'Стать партнером')">Оставить заявку</button>
            </div>
        </div>
    </div>
</section>