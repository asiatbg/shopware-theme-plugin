$(document).ready(function() {
    const selectParent = $('select');
    selectParent.each(function(i) {
        $(this).toggleClass('is--hidden');
        $(this).after("<ul class='custom-sort--field'></ul>").after('<div class="sort-text--wrapper"></div>');
        $(this).parent().find('.sort-text--wrapper').append('<span class="placeholder">Sort By</span>').append('<i class="fas fa-chevron-up"></i>');

        // Add li and check which option was selected and added class for this element
        $( this ).find('option').each(function () {
            $( this ).parent().parent().find('.custom-sort--field').append('<li class="option--field ' + ($( this ).parent().val() === this.value ? 'sort-is--active': '') + '"' +
                ' id="' + this.value  +'">' + $(this).text() + '</li>');
        });

        // Change arrows
        $(this).parent().find('.sort-text--wrapper').on('click', function (event) {
            if ($(this).siblings('.custom-sort--field').hasClass('active')) {
                $(this).find('i').removeClass('rotate');
                $(this).siblings('.custom-sort--field').removeClass('active');
            } else {
                $(this).find('i').toggleClass('rotate');
                $(this).siblings('.custom-sort--field').toggleClass('active');
            }
        });

        $(this).parent().find('.option--field').on('click',function (event) {
            event.preventDefault();
            if (window.innerWidth <= 768) {
                $('.option--field').removeClass('sort-is--active');
                $(this).toggleClass('sort-is--active');
            }

            $(this).parent().siblings('select').val(this.id).change();
            $(this).parent().siblings('.sort-text--wrapper').find('i').toggleClass('rotate');
            $(this).parent().removeClass('active');
        });
    });
});


