<form onsubmit="postform(this, 'selection'); return false;" method="post">

    <div data-form-body>
        <input type="hidden" name="url" value="{$_SERVER['REQUEST_URI']}">
        {/* <input type="hidden" name="page" value="{$data.name}"> */}
        <div class="textbox-group">
            <div class="textbox">
                <label class="required" for="name">{tlang('Имя')}</label>
                <input required type="text" name="name" placeholder="{tlang('Введите имя')}" value="" />
            </div>
            <div class="textbox">
                <label class="required" for="phone">{tlang('Номер телефона')}</label>
                <input required type="tel" placeholder="+7 (___) ___-__-__" name="phone" value="" />
            </div>
        </div>
        <div class="textbox">
            <label class="required" for="email">E-mail</label>
            <input required type="email" placeholder="@" name="email" value="" />
        </div>
        {view('includes/strings/privacy_text.tpl')}
        <input class="btn btn-primary btn-large" type="submit" value="{tlang('Отправить')}" />
        {form_csrf()}
    </div>
    <div data-form-loader></div>
    {view('includes/strings/success.tpl')}
    {view('includes/strings/error.tpl')}
</form>