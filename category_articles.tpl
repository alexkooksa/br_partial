<section>
    <div class="wrap">
        <h1>Полезная информация</h1>
        <ul class="grid-articles">
            {for $i = 0; $i < 15; $i++}
                <li class="">
                    <a href="#" class="article-item">
                        <div class="article-image image-fit"><img src="_img/test.jpg" alt=""></div>
                        <ul class="news-item-tags flex-group">
                            <li class="item news-item-tag">тег номер 1</li>
                            <li class="item news-item-tag">тег средней длины</li>
                            <li class="item news-item-tag">длинный тег</li>
                        </ul>
                        <p class="title">Ответственное хранение на севере Москвы</p>
                    </a>
                </li>
            {/for}
        </ul>
    </div>
</section>