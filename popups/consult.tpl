<form onsubmit="postform(this, 'consult'); return false;" method="post">
    <div data-form-body>
        {/* <input type="hidden" name="url" value="{$_SERVER['REQUEST_URI']}"> *}
        {/* <input type="hidden" name="page" value="{$data.name}"> */}
        <p class="group-label">{tlang('Связаться через')}</p>
        <div class="radio-group" data-radio="contact-type">
            <div class="radio-item">
                <input type="radio" checked value="{tlang('Звонок')}" name="contact_type" id="call">
                <label for="call">{tlang('Звонок')}</label>
            </div>
            <div class="radio-item">
                <input type="radio" value="WhatsApp" name="contact_type" id="whatsapp">
                <label for="whatsapp">WhatsApp</label>
            </div>
            <div class="radio-item">
                <input type="radio" value="Telegram" name="contact_type" id="telegram">
                <label for="telegram">Telegram</label>
            </div>
        </div>
        <div class="textbox telegram-textbox hidden">
            <label for="">Логин Telegram</label>
            <input type="text" name="telegram" value="" />
        </div>
        <div class="textbox-group equals">
            <div class="item textbox">
                <label class="required" for="">{tlang('Ваше имя')}</label>
                <input required type="text" name="name" value="" />
            </div>
            <div class="item textbox">
                <label class="required" for="">Номер телефона</label>
                <input required type="tel" name="phone" value="" />
            </div>
        </div>
        <input class="btn btn-primary btn-lg" type="submit" value="{tlang('Отправить')}" />
        {view('includes/strings/privacy_text.tpl')}
        {form_csrf()}
    </div>
    <div data-form-loader></div>
    {view('includes/strings/success.tpl')}
    {view('includes/strings/error.tpl')}
</form>