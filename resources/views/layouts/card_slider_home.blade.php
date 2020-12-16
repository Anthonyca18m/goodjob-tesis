<div class="blog-food">
    <div class="blog-food__slide__wrapper">
        <div class="blog-food__slide">
            @for ($i = 0; $i < 10; $i++)
                <div class="blog-food__slide__item">
                    <div class="post-card -inner-text">
                        <a class="card__cover" href="post_standard.html">
                            <img src="images/posts/food/slide/1.png" alt="Looking for some feedback for this rejected track" />
                        </a>
                        <div class="card__content">
                            <h5 class="card__content-category">Technology</h5>
                            <a class="card__content-title" href="post_standard.html">
                                Looking for some feedback for this rejected track
                            </a>
                            <div class="card__content-info">
                                <div class="info__time"><i class="far fa-clock"></i>
                                    <p>Clock Wed 02, 2019</p>
                                </div>
                                <div class="info__comment"><i class="far fa-comment"></i>
                                    <p>3</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endfor
        </div>
    </div>
</div>
