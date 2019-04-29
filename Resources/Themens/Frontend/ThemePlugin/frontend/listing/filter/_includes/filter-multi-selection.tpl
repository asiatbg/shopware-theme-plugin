{namespace name="frontend/listing/listing_actions"}
{extends file="parent:frontend/listing/filter/_includes/filter-multi-selection.tpl"}

{block name="frontend_listing_filter_facet_multi_selection_icon"}
{/block}
{block name="frontend_listing_filter_facet_multi_selection_title"}
    <label class="filter-panel--title" for="{$facet->getFieldName()|escape:'htmlall'}" title="{$facet->getLabel()|escape:'htmlall'}">
        {block name="frontend_listing_filter_facet_multi_selection_content"}
            <span class="title--content">{$facet->getLabel()|escape}</span>
        {/block}
        {block name="frontend_listing_filter_facet_multi_selection_content_icon"}
            <i class="filter-panel--icon fas fa-plus"></i>
        {/block}
    </label>
{/block}
{block name="frontend_listing_filter_facet_multi_selection_label"}
        <label class="filter-panel--label"
               for="__{$facet->getFieldName()|escape:'htmlall'}__{$option->getId()|escape:'htmlall'}">

            {if $facet|is_a:'\Shopware\Bundle\SearchBundle\FacetResult\MediaListFacetResult'}
                {$mediaFile = {link file='frontend/_public/src/img/no-picture.jpg'}}
                {if $option->getMedia()}
                    {$mediaFile = $option->getMedia()->getFile()}
                    <span class="filter-panel--media-image" style="background-image: url({$mediaFile})"}"></span>
                {elseif $option->getAttributes()}
{*                    {if $option->getAttributes()}*}
                        {foreach $option->getAttributes() as $opt}

                            <span class="filter-panel--media-image" style="background-color: {$opt->get("color")}"></span>

                        {/foreach}
{*                        <p>{$option->getAttributes()|print_r}</p>*}
{*                    {/if}*}
                    {else}
                    <span class="filter-panel--media-image" style="background-image: url({$mediaFile})"}"></span>
                {/if}


                {$option->getLabel()|escape}
            {else}
                {$option->getLabel()|escape}
            {/if}
        </label>
{/block}