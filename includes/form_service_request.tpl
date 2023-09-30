<div class="default-form request-form">
    <p class="form-title h2">Оставить заявку</p>
    <form>
        <div data-form-body>
            <div class="textbox-group">
                <div class="item textbox">
                    <label for="name">Имя</label>
                    <input required type="text" name="name" id="name">
                </div>
                <div class="item textbox">
                    <label for="phone">Телефон</label>
                    <input required type="tel" name="phone" id="phone" placeholder="+___________">
                </div>
                <div class="item submitbox">
                    <input type="submit" value="Отправить" class="btn btn-white--transparent btn-lg">
                </div>
            </div>
            {view('includes/privacy_text.tpl')}
        </div>
        <div data-form-loader></div>
        <div data-success>Успех</div>
        <div data-error>Ошибка</div>
    </form>
</div>