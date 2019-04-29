{extends file="parent:frontend/index/sidebar.tpl"}

{block name="frontend_index_left_switches"}

{/block}

{block name="frontend_index_left_categories_headline"}

{/block}
{block name="frontend_index_left_inner"}
    {block name='frontend_index_logo_container'}
        {include file="frontend/index/logo-container.tpl"}
    {/block}
    {$smarty.block.parent}
{/block}
{block name='frontend_index_left_categories'}
    {*{debug}*}
    {$smarty.block.parent}
    {block name='frontend_index_navigation_icons'}
        <nav class="smartphone--navigation-wrapper">
            <ul class="navigation--list">
                <li class="navigation--entry">
                    <span class="icon--mail"></span>
                    <span class="topbar-nav__label all-caps is-visible">{s namespace="frontend/index/topbar-navigation" name="header-mail"}Newsletter{/s}</span>
                </li>
                <li class="navigation--entry">
                    <span class="icon--sales"></span>
                    <span class="topbar-nav__label all-caps is-visible">{s namespace="frontend/index/topbar-navigation" name="header-sell"}Sell{/s}</span>
                </li>
                <li class="navigation--entry">
                    <span class="icon--account"></span>
                    <span class="topbar-nav__label all-caps is-visible">{s namespace="frontend/index/topbar-navigation" name="header-account"}Account{/s}</span>
                </li>
                <li class="navigation--entry currency">
                    {action module=widgets controller=index action=shopMenu}
                </li>
            </ul>
        </nav>
    {/block}
{/block}


{block name="frontend_index_left_navigation_smartphone"}
    {*<div class="navigation--smartphone">*}
        {*<i class="icon--close-menu"></i>*}

        {* Switches for currency and language on mobile devices *}
        {*{block name="frontend_index_left_switches"}*}
            {*<div class="mobile--switches">*}
                {*{action module=widgets controller=index action=shopMenu}*}
            {*</div>*}
        {*{/block}*}
    {*</div>*}
{/block}

{*{block name="frontend_index_sidebar"}*}
    {*{$smarty.block.parent}*}
    {*{/block}*}