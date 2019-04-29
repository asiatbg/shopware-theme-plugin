{extends file="parent:widgets/emotion/components/component_banner_slider.tpl"}

{block name="frontend_widgets_banner_slider_link"}
    <div class="slider-link--wrapper">
        <h2>{$banner.title|escape}</h2>
        <a class="banner-slider--link" href="{$banner.link}" title="{$banner.title|escape}">
            {$banner.altText}
        </a>
    </div>
{/block}
