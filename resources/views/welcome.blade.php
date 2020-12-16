@extends('layouts.app')

@section('content')
<div id="load">
    <div class="load__content">
        <div class="load__icon">
            <img src="images/icons/load.gif" alt="Loading icon" />
        </div>
    </div>
</div>

@include('layouts.top_navegator')

<div id="content">
    <div class="container-full">
        @include('layouts.card_slider_home')
    </div>
    <div class="container">
        <div class="blog-food">
            <div class="container-full">

            </div>
        </div>


        <div class="blog-masonry">
            <div class="post-card -center"><a class="card__cover" href="post_standard.html"><img src="images/posts/1.png" alt="Looking for some feedback for this rejected track" /></a>
                <div class="card__content">
                    <h5 class="card__content-category">Technology</h5><a class="card__content-title" href="post_standard.html">Looking for some feedback for this rejected track</a>
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
            <div class="post-card -center"><a class="card__cover" href="post_standard.html"><img src="images/posts/2.png" alt="How to name, save and export a finish template" /></a>
                <div class="card__content">
                    <h5 class="card__content-category">Typography</h5><a class="card__content-title" href="post_standard.html">How to name, save and export a finish template</a>
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
            <div class="post-card -center"><a class="card__cover" href="post_standard.html"><img src="images/posts/3.png" alt="I want to create a logo with illustrator hacker" /></a>
                <div class="card__content">
                    <h5 class="card__content-category">Graphic</h5><a class="card__content-title" href="post_standard.html">I want to create a logo with illustrator hacker</a>
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
            <div class="post-card -center"><a class="card__cover" href="post_standard.html"><img src="images/posts/4.png" alt="where I can found the sound in this video template?" /></a>
                <div class="card__content">
                    <h5 class="card__content-category">Design</h5><a class="card__content-title" href="post_standard.html">where I can found the sound in this video template?</a>
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
            <div class="post-card -center">
                <div class="card__cover -slide">
                    <div class="card__cover__slide-item"><img src="images/posts/2.png" alt="Looking for some feedback for this rejected track" /></div>
                    <div class="card__cover__slide-item"><img src="images/posts/3.png" alt="Looking for some feedback for this rejected track" /></div>
                    <div class="card__cover__slide-item"><img src="images/posts/4.png" alt="Looking for some feedback for this rejected track" /></div>
                </div>
                <div class="card__content">
                    <h5 class="card__content-category">Technology</h5><a class="card__content-title" href="post_standard.html">Looking for some feedback for this rejected track</a>
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
            <div class="post-card -center"><a class="card__cover" href="post_standard.html"><img src="images/posts/6.png" alt="where I can found the sound in this video template?" /></a>
                <div class="card__content">
                    <h5 class="card__content-category">Typography</h5><a class="card__content-title" href="post_standard.html">where I can found the sound in this video template?</a>
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
            <div class="post-card -center"><a class="card__cover" href="post_standard.html"><img src="images/posts/7.png" alt="I want to create a logo with illustrator hacker" /></a>
                <div class="card__content">
                    <h5 class="card__content-category">Graphic</h5><a class="card__content-title" href="post_standard.html">I want to create a logo with illustrator hacker</a>
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
            <div class="post-card -center"><a class="card__cover" href="post_standard.html"><img src="images/posts/8.png" alt="where I can found the sound in this video template?" /></a>
                <div class="card__content">
                    <h5 class="card__content-category">Typography</h5><a class="card__content-title" href="post_standard.html">where I can found the sound in this video template?</a>
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
            <div class="post-card -center"><a class="card__cover" href="post_standard.html"><img src="images/posts/9.png" alt="I want to create a logo with illustrator hacker" /></a>
                <div class="card__content">
                    <h5 class="card__content-category">Graphic</h5><a class="card__content-title" href="post_standard.html">I want to create a logo with illustrator hacker</a>
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
        <div class="center"><a class="btn -normal load-more-btn" href="#">Load more posts</a></div>
        <div class="instagrams">
            <div class="instagrams-container"><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/1.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/2.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/3.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/4.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/5.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/1.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/3.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/4.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

@include('layouts.footer')

@endsection
