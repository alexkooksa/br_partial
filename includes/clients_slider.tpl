<section class="section-bg bg-light">
    <div class="wrap">
        <h2>Нам доверяют</h2>
    </div>
    <div class="swiper-container" data-swiper="clients">
        <div class="swiper-wrapper">
            {for $i = 1; $i < 13; $i++}
                <div class="swiper-slide">
                    <img src="/uploads/clients/{echo $i}.png" alt="">
                </div>
            {/for}
        </div>
    </div>
</section>