{extends file="parent:widgets/listing/get_category.tpl"}

{block name="widgets_listing_get_category_categories_show"}{/block}

{block name="widgets_listing_get_category_categories_back_link_name"}
    {$category.name}
{/block}

{block name="widgets_listing_get_category_name_link"}{/block}

{block name="widgets_listing_get_category_mainmenu_link"}
{/block}

{block name="widgets_listing_get_category_categories_item_link_name"}
    {$children.name}
    {if $children.attribute.new}
        <span class="super-script">new</span>
    {/if}

{/block}