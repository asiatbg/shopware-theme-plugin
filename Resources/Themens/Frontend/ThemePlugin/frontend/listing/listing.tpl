{extends file="parent:frontend/listing/listing.tpl"}

{block name="frontend_listing_list_promotion_link_show_listing"}

{/block}

{block name="frontend_listing_top_actions"}
    {block name="navigation-category"}
        <div class="listing--top-navigation">
            <div data-listing-actions="true"
                 {if $listingMode != 'full_page_reload'}data-bufferTime="0"{/if}
                 class="{$class}{block name='frontend_listing_actions_class'}
                    action--filter
                 {/block}">

                {block name='frontend_listing_actions_filtr_new'}
                    {include file="frontend/listing/actions/action-filter-button.tpl"}
                {/block}
            </div>
            <h5 class="category-title">{$sCategoryContent.name} <span class="category--product-count">( {$sNumberArticles} )</span></h5>
            {block name='frontend_listing_actions_sort_new'}
                {include file="parent:frontend/listing/actions/action-sorting.tpl"}
            {/block}


        </div>
    {/block}
    {include file='frontend/listing/listing_actions.tpl'}
{/block}
