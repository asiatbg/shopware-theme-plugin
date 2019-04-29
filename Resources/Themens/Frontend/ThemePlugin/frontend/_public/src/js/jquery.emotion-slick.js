$.subscribe('plugin/swEmotionLoader/onLoadEmotionFinished', function (event, me, e) {
    const productListElement = $('.product-list--container');

    productListElement.on('init reInit afterChange', function(event, slick, currentSlide, nextSlide){
        if (event.type === "init") {
            $('.draggable').after('<span class="pagination-info"></span>');
        }
        const current = (currentSlide ? currentSlide : 0) + 1;
        $('.pagination-info').text(current + ' / ' + slick.slideCount);
    });

    const settings = {
        infinite: true,
        speed: 300,
        arrows: true,
        responsive: [
            {
                breakpoint: 99999,
                settings: "unslick"
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                }
            }
        ]
    };

    // Init Slider
    function initSlider() {
        productListElement.slick(settings);
    }

    initSlider();

    // If resize window, check if slick is still working
    $(window).on('resize', function() {
        if(window.innerWidth > 768) {
            $('.pagination-info').remove();
        }
        if (!productListElement.hasClass('slick-initialized')) {
            return initSlider();
        }

    });

});