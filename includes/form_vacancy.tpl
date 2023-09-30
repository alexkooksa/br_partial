<div class="default-form vacancy-form title-left">
    <div class="form-desc-left">
        {if !is_null($in_category)}
            <p class="form-title h2">Не нашли подходящую вакансию?</p>
            <p class="form-desc">Оставьте свой отклик и наш HR свяжется с вами</p>
        {else:}
            <p class="form-title h2">Откликнуться на вакансию</p>
        {/if}
    </div>
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
            </div>
            <div class="textbox-group">
                <div class="item textbox">
                    <label for="email">E-mail</label>
                    <input required type="email" name="email" id="email">
                </div>
                <div class="item textbox">
                    <label>Файл резюме</label>
                    <input type="file" onchange="add_cfile(this); return false;" id="upload-file">
                    <label for="upload-file" class="input-attach white-icon">Выберите файл</label>
                    {if form_error('docs')}
                        <i>{form_error('docs')}</i>
                    {/if}

                    <input name="docs" value="{set_value('docs')}" type="hidden" />
                    <p style="display:none" class="upl_f"><img src="_img/loader.svg" alt=""></p>
                    <p data-success class="msg msg-success f_file" {if set_value('docs') != ''}style="display:block" {/if}>Файл <span>{if set_value('docs') != ''}{set_value('docs')}{/if}</span> успешно прикреплен</p>
                    <p data-error class="msg msg-error f_file">Файл не прикреплен<span></span></p>
                </div>
            </div>
            <div class="textbox">
                <label for="comment">Сопроводительное письмо</label>
                <textarea required name="comment" id="comment" rows="5"></textarea>
            </div>
            <div class="submit-group">
                {view('includes/privacy_text.tpl')}
                <div class="submitbox">
                    <input type="submit" value="Отправить" class="btn btn-white--transparent btn-lg">
                </div>
            </div>
        </div>
        <div data-form-loader></div>
        <div data-success>Успех</div>
        <div data-error>Ошибка</div>
    </form>
</div>