<div class="magazine-card">
    <div class="magazine-card__image" onclick="">  {/* + повесить онклик для попапа на картинку и заголовок */}
        <img class="object-fit" src="{$item.field_image}" alt="">
    </div>
    <time class="magazine-card__date">{date('d F Y')}</time>
    <h3 class="title magazine-card__title" onclick="">{$item.title}</h3> {/* + повесить онклик для попапа на картинку и заголовок */}
    <button class="btn btn-outline" onclick="">Заказать</button> {/* + повесить онклик для попапа на картинку и заголовок */}
</div>