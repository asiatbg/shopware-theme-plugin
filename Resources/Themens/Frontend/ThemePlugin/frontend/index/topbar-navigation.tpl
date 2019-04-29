{extends file='parent:frontend/index/topbar-navigation.tpl'}

{block name='frontend_index_navigation_inline'}

{/block}

{block name="frontend_index_checkout_actions_service_menu"}

{/block}



{* Top bar main *}
{block name="frontend_index_top_bar_main"}
    <div class="top-bar">

        {* Top bar main container *}
        {block name="frontend_index_top_bar_main_container"}
            <div class="container block-group">

                {* Top bar navigation *}
                {block name="frontend_index_top_bar_nav"}
                    <nav class="top-bar--navigation block" role="menubar">
                        {action module=widgets controller=index action=shopMenu}

                        {block name="frontend_index_header_column_newsletter_form_submit"}
                                <a href="#">
                                    <span class="icon--mail"></span>
                                </a>
                            <span class="topbar-nav__label all-caps is-visible">{s namespace="frontend/index/topbar-navigation" name="header-mail"}Newsletter{/s}</span>

                        {/block}

                        {block name="frontend_index_header_sales"}
                            <a href="#">
                                <span class="icon--sales"></span>
                            </a>
                            <span class="topbar-nav__label all-caps is-visible">{s namespace="frontend/index/topbar-navigation" name="header-sell"}Sell{/s}</span>
                        {/block}

                        {block name="frontend_index_header_mobile_menu"}
                            <span id="hamburger-menu" class="hamburger-menu-on"></span>
                        {/block}
                    </nav>
                {/block}
            </div>
        {/block}
    </div>
{/block}
