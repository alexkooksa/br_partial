<form onsubmit="postform(this, 'research'); return false;" method="post">
    <div data-form-body>
        <input type="hidden" name="url" value="{$_SERVER['REQUEST_URI']}">
        {/* <input type="hidden" name="page" value="{$data.name}"> */}
        <div class="textbox-group">
            <div class="textbox">
                <input required type="text" name="name" placeholder="{tlang('Ваше имя')} *" value="" />
            </div>
            <div class="textbox">
                <input required type="tel" placeholder="Номер телефона *" name="phone" value="" />
            </div>
        </div>
        <div class="textbox">
            <input required type="email" placeholder="E-mail *" name="email" value="" />
        </div>
        <div class="textbox">
            <textarea required name="comment" rows="2" placeholder="Дополнительная информация"></textarea>
        </div>
        {view('includes/strings/privacy_text.tpl')}
        <input class="btn btn-secondary btn-shadow-secondary btn-rounded btn-wide" type="submit" value="{tlang('Отправить')}" />
        {form_csrf()}
    </div>
    <div data-form-loader></div>
    {view('includes/strings/success.tpl')}
    {view('includes/strings/error.tpl')}
</form>