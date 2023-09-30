<form onsubmit="postform(this, 'contacts'); return false;" method="post" {if $popup === false}class="ui-block" {/if}>
    {if $popup === false}<p class="title form-title">Обратная связь</p>{/if}
    <div data-form-body>
        <input type="hidden" name="url" value="{$_SERVER['REQUEST_URI']}">
        {/* <input type="hidden" name="page" value="{$data.name}"> */}
        <div class="textbox">
            <input required type="text" name="name" placeholder="Ваше имя*" value="" />
        </div>
        <div class="textbox">
            <input required type="tel" placeholder="Номер телефона *" name="phone" value="" />
        </div>
        <div class="textbox">
            <input required type="email" placeholder="E-mail *" name="email" value="" />
        </div>
        <div class="textbox">
            <textarea required name="comment" rows="2" placeholder="Сообщение *"></textarea>
        </div>
        {if !is_null($captcha)}
            <div class="txt-area"><textarea required name="message" rows="21" placeholder="Message"></textarea></div>
        {/if}
        {view('includes/strings/privacy_text.tpl')}
        <input class="btn btn-secondary btn-shadow-secondary btn-rounded btn-wide" type="submit" value="{tlang('Отправить')}" />
        {form_csrf()}
    </div>
    <div data-form-loader></div>
    {view('includes/strings/success.tpl')}
    {view('includes/strings/error.tpl')}
</form>