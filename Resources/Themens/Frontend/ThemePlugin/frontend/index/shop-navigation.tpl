{extends file='parent:frontend/index/shop-navigation.tpl'}

{* Menu {offcanvas} trigger *}
{block name='frontend_index_offcanvas_left_trigger'}

{/block}

{* Search form *}
{block name='frontend_index_search'}
    <li class="navigation--entry entry--search" role="menuitem" data-search="true" aria-haspopup="true"{if $theme.focusSearch && {controllerName|lower} == 'index'} data-activeOnStart="true"{/if} data-minLength="{config name="MinSearchLenght"}">
        {s namespace="frontend/index/search" name="IndexTitleSearchToggle" assign="snippetIndexTitleSearchToggle"}{/s}
        <a class="btn entry--link entry--trigger" href="#show-hide--search" title="{$snippetIndexTitleSearchToggle|escape}">


            {block name='frontend_index_search_display'}
                <span class="search--display"></span>
            {/block}
        </a>

        {* Include of the search form *}
        {block name='frontend_index_search_include'}

        {/block}
    </li>

    {block name='frontend_index_search_label'}
        <span class="navigation--list__label all-caps is-visible">{s namespace="frontend/index/topbar-navigation" name="header-search"}Search{/s}</span>
    {/block}
{/block}

{* Cart entry *}
{block name='frontend_index_checkout_actions'}
    {* Include of the cart *}
    {block name='frontend_index_checkout_actions_include'}
        {action module=widgets controller=checkout action=info}

    {/block}

{/block}