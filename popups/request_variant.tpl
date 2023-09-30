<form onsubmit="postform(this, 'request_variant'); return false;" method="post">
    <div data-form-body>
        <input type="hidden" name="product_url" value="">
        <input type="hidden" name="product_name" value="">
        <input type="hidden" name="variant_name" value="-">
        <div class="textbox">
            <input required type="text" name="name" placeholder="Ваше имя *" value="" />
        </div>
        <div class="textbox">
            <input required type="tel" placeholder="Номер телефона *" name="phone" value="" />
        </div>
        <div class="textbox">
            <input required type="email" placeholder="Введите e-mail *" name="email" value="" />
        </div>
        <div class="textbox">
            <textarea required name="comment" rows="2" placeholder="Комментарий *"></textarea>
        </div>
        {view('includes/strings/privacy_text.tpl')}
        <input class="btn btn-secondary btn-shadow-secondary btn-rounded btn-wide" type="submit" value="{tlang('Отправить')}" />
        {form_csrf()}
    </div>
    <div data-form-loader></div>
    {view('includes/strings/success.tpl')}
    {view('includes/strings/error.tpl')}
</form>