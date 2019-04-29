{extends file='parent:frontend/index/index.tpl'}

{block name='frontend_index_after_body'}
    {block name='frontend_index_container_popup'}
        {include file="frontend/index/popup.tpl"}
    {/block}
{/block}
{block name='frontend_index_top_bar_container'}

{/block}


{block name='frontend_index_header_navigation'}
    <div class="container header--navigation">

        {block name='frontend_index_topbar_container'}
            {include file="frontend/index/topbar-navigation.tpl"}
        {/block}
        {* Logo container *}
        {block name='frontend_index_logo_container'}
            {include file="frontend/index/logo-container.tpl"}
        {/block}

        {* Shop navigation *}
        {block name='frontend_index_shop_navigation'}

            {include file="frontend/index/shop-navigation.tpl"}

        {/block}

        {block name='frontend_index_container_ajax_cart'}

        {/block}
    </div>
{/block}

{block name='frontend_index_navigation_categories_top'}
    <nav class="navigation-main">
        <div class="container" data-menu-scroller="false" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
            {block name="frontend_index_navigation_categories_top_include"}
                {include file='frontend/index/main-navigation.tpl'}
                {*{$smarty.block.parent}*}
                {*{block name="frontend_plugins_advanced_menu_outer"}*}
                    {*{include file="frontend/plugins/advanced_menu/index.tpl"}*}
                {*{/block}*}
            {/block}
        </div>
    </nav>
{/block}

{* Breadcrumb *}
{block name='frontend_index_breadcrumb'}

{/block}

{block name='frontend_index_content_main'}
    {$smarty.block.parent}
    <div id="menu-trigger" class="menu--trigger">
        <span class="hamburger-menu-off"></span>
    </div>

{/block}



{block name='frontend_index_content_wrapper'}
    <div class="content--wrapper">
        {if {$sCategoryContent.media.path}}

            <div class="category-hero--image" style="background-image: url({link file={$sCategoryContent.media.path}});">
                <h1 class="category-hero--title">{$sCategoryContent.name}</h1>
                <div class="category-hero--text">{$sCategoryContent.cmsText}</div>

            </div>

        {/if}
        {block name='frontend_index_content'}{/block}
    </div>
{/block}
