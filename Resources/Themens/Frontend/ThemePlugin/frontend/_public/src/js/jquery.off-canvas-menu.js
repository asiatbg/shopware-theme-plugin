const hamburgerMenu = $('#hamburger-menu');
const menuTrigger = $('#menu-trigger');
const headerNavigation = $('.header--navigation');
const sideBarMain = $('.sidebar-main');

hamburgerMenu.click(function() {
    addCanvasMenu();
});

menuTrigger.click(function() {
    removeCanvasMenu();
});

function addCanvasMenu() {
    sideBarMain.toggleClass('is--show');
    $('body').toggleClass('body-move');
    menuTrigger.toggleClass('is--block');
    headerNavigation.toggleClass('header--hidden');
}

function removeCanvasMenu() {
    sideBarMain.removeClass('is--show');
    $('body').removeClass('body-move');
    menuTrigger.removeClass('is--block');
    headerNavigation.removeClass('header--hidden');
}
