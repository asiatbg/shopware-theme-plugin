{extends file='parent:widgets/checkout/info.tpl'}

{block name="frontend_index_checkout_actions_notepad"}

{/block}

{block name="frontend_index_checkout_actions_account_navigation"}

{/block}

{block name="frontend_index_checkout_actions_cart"}
    <li class="navigation--entry entry--cart" role="menuitem">
        {s namespace="frontend/index/checkout_actions" name="IndexLinkCart" assign="snippetIndexLinkCart"}{/s}
        <a class="btn is--icon-left cart--link" href="{url controller='checkout' action='cart'}" title="{$snippetIndexLinkCart|escape}">
            {*<span class="cart--display">*}
                {*{if $sUserLoggedIn}*}
                    {*{s name='IndexLinkCheckout' namespace='frontend/index/checkout_actions'}{/s}*}
                {*{else}*}
                    {*{s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}*}
                {*{/if}*}
            {*</span>*}

            <span class="icon--cart cart--quantity{if $sBasketQuantity < 1} is--hidden{/if}">{$sBasketQuantity}</span>



        </a>
        {*<div class="ajax-loader">&nbsp;</div>*}
    </li>

    {block name='frontend_index_search_label'}
        <span class="navigation--list__label all-caps is-visible">{s namespace="frontend/index/topbar-navigation" name="header-cart"}Cart{/s}</span>
    {/block}
{/block}

{*{block name="frontend_index_checkout_actions_my_options"}*}
    {*<li class="navigation--entry entry--cart" role="menuitem">*}
        {*<a class="btn is--icon-left cart--link" href="{url controller='checkout' action='cart'}" title="{$snippetIndexLinkCart|escape}">*}
            {*<span class="icon--account"></span>*}
        {*</a>*}
    {*</li>*}
{*{/block}*}

{block name="frontend_index_checkout_actions_my_options"}
    <li class="navigation--entry entry--account{if {config name=useSltCookie} || $sOneTimeAccount} with-slt{/if}"
        role="menuitem"
        data-offcanvas="true"
        data-offCanvasSelector=".account--dropdown-navigation">
        {block name="frontend_index_checkout_actions_account"}
            <a href="{url controller='account'}"
               title="{"{if $userInfo}{s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}{$userInfo['firstname']}{s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s} - {/if}{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}"|escape}"
               class="btn is--icon-left entry--link account--link{if $userInfo} account--user-loggedin{/if}">

                    <span class="icon--account">

                    </span>
            </a>
        {/block}
    </li>

    {block name='frontend_index_account_label'}
        <span class="navigation--list__label all-caps is-visible">{s namespace="frontend/index/topbar-navigation" name="header-account"}Account{/s}</span>
    {/block}
{/block}