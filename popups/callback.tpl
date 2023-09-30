<form onsubmit="postform(this, 'callback'); return false;" method="post">
    <div data-form-body>
        <input type="hidden" name="url" value="{$_SERVER['REQUEST_URI']}">
        {/* <input type="hidden" name="page" value="{$data.name}"> */}
        <div class="textbox-group equals">
            <div class="item textbox ">
                <label class="required" for="name">{tlang('Имя')}</label>
                <input required type="text" name="name" placeholder="{tlang('Введите имя')}" value="" />
            </div>
            <div class="item textbox ">
                <label class="required" for="phone">{tlang('Номер телефона')}</label>
                <input required type="tel" placeholder="+_ (___) ___-__-__" name="phone" value="" />
            </div>
        </div>
        <div class="textbox-group equals">
            <div class="item textbox " data-datepicker-container>
                <label for="name">{tlang('Желаемая дата звонка')}</label>
                <input class="input-icon input-date" name="date" type="text" data-el="datepicker" value="{date('d.m.Y')}" placeholder="{tlang('Выберите дату')}" />
            </div>
            <div class="item textbox ">
                <label for="phone">{tlang('Желаемое время звонка')}</label>
                <select name="time" id="">
                    <option value="в ближайшее время" selected>{tlang('в ближайшее время')}</option>
                    {for $i = 10; $i <20; $i++}
                        <option value="{$i}:00">{$i}:00</option>
                        {if $i < 19}
                            <option value="{$i}:30">{$i}:30</option>
                        {/if}
                    {/for}
                </select>
                <p></p>
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