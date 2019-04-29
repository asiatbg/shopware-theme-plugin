{extends file="parent:frontend/index/footer.tpl"}

{block name='frontend_index_footer_menu'}

    {block name="frontend_index_shopware_footer_logo"}
        <div class="footer--logo">
            <img src="{link file="frontend/_public/src/img/stadium-goods-logo-animated.webp"}" alt="">
        </div>
    {/block}

    {block name="frontend_index_footer_column_newsletter"}
        <div class="footer--column column--newsletter is--last block">
            {block name="frontend_index_footer_column_newsletter_headline"}
                <div class="column--headline">{s name="sFooterNewsletterHead"}{/s}</div>
            {/block}

            {block name="frontend_index_footer_column_newsletter_content"}
                <div class="column--content" data-newsletter="true">

                    {block name="frontend_index_footer_column_newsletter_form"}
                        <form class="newsletter--form" action="{url controller='newsletter'}" method="post">
                            <input type="hidden" value="1" name="subscribeToNewsletter" />

                            {block name="frontend_index_footer_column_newsletter_form_field_wrapper"}
                                <div class="content">

                                    {block name="frontend_index_footer_column_newsletter_form_field"}
                                        <input type="email" name="newsletter" class="newsletter--field" placeholder="{s namespace="frontend/index/footer" name="IndexFooterNewsletterValue"}{/s}" />
                                        {if {config name="newsletterCaptcha"} !== "nocaptcha"}
                                            <input type="hidden" name="redirect">
                                        {/if}
                                    {/block}

                                    {block name="frontend_index_footer_column_newsletter_form_submit"}
                                        <button type="submit" class="newsletter--button btn">
                                            <i class="icon--mail"></i> <span class="button--text">{s name='IndexFooterNewsletterSubmit'}{/s}</span>
                                        </button>
                                    {/block}
                                </div>
                            {/block}
                        </form>
                    {/block}
                </div>
            {/block}
        </div>
    {/block}
    {$smarty.block.parent}
{/block}


{block name='frontend_index_footer_copyright'}{/block}