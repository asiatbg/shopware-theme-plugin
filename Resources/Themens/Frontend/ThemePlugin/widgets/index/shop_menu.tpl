{extends file="parent:widgets/index/shop_menu.tpl"}
{block name='frontend_index_actions_active_shop'}{/block}

{block name='frontend_index_actions_currency'}
    {if $currencies|count > 1}
        <div class="top-bar--currency">
            {block name='frontend_index_actions_currency_form'}
                {block name="frontend_index_actions_currency_form_select"}
                    <div class="select-field">
                            <img class="current-flag" src="themes/Frontend/VirtuaTheme/frontend/_public/src/img/flags/{$shop->getCurrency()->getName()}.png" alt="currency flag">
                    </div>
                {/block}
            {/block}
        </div>
        {block name='frontend_index_currency_label'}
            <span class="topbar-nav__label all-caps is-visible">{s namespace="frontend/index/topbar-navigation" name="header-currency"}currency{/s}</span>
        {/block}
    {/if}
{/block}

