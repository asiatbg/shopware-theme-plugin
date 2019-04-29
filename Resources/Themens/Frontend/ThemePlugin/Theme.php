<?php

namespace Shopware\Themes\ThemePlugin;

use Doctrine\Common\Collections\ArrayCollection;

class Theme extends \Shopware\Components\Theme {
    protected $extend = 'Responsive';
    protected $name = 'Theme Plugin';
    protected $description = '';
    protected $author = '';
    protected $license = '';

    protected $css = [
        'src/css/styles.min.css',
    ];

    protected $javascript = [
        'vendors/js/jquery-migrate-1.2.1.min.js',
        'src/js/jquery.off-canvas-menu.js',
        'src/js/jquery.select-box.js',
        'src/js/jquery.filter-component-change.js',
        'src/js/jquery.reset-filters.js',

        'src/slick/slick.min.js',
        'src/js/jquery.emotion-slick.js'
    ];
}