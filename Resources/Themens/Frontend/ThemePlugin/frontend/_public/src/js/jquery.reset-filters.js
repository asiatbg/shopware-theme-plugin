const resetFilterMobile = document.getElementById('reset-filter-btn');

resetFilterMobile.addEventListener('click', function () {
    const resetAttribute = $(this).parent().parent().find('[data-filter-param="reset"]');
    for (let i = 0; i < resetAttribute.length; i++) {
        resetAttribute[i].click();
    }
});