{namespace name="frontend/listing/listing_actions"}

{block name='frontend_listing_actions_filter'}
    {$listingMode = {config name=listingMode}}

    <div class="action--filter-options off-canvas{if $facets|count <= 0} is--hidden{/if}{if $listingMode != 'full_page_reload'} is--ajax-reload{/if}">

        {block name="frontend_listing_action_filters_mobile"}
            <div class="filter-actions-mobile">
                {block name='frontend_listing_actions_filter_close_button'}
                    <a href="#" class="filter--close-btn">
                        Cancel
                    </a>
                {/block}
                {block name="frontend_listing_actions_title_section"}
                    <h3 class="filter--actions-title">{s name='ListingFilterButton'}{/s}</h3>
                {/block}
                {block name="frontend_listing_actions_reset_filters"}
                    <a href="#" class="filter--actions-reset" id="reset-filter-btn">
                        Reset
                    </a>
                {/block}
            </div>
            {block name='frontend_listing_actions_sort'}
                {include file="frontend/listing/actions/action-sorting.tpl"}
            {/block}
        {/block}




        {block name='frontend_listing_actions_filter_container'}
            <div class="filter--container">
                {block name='frontend_listing_actions_filter_form'}
                    <form id="filter"
                          method="get"
                          data-filter-form="true"
                          data-is-in-sidebar="{if $theme.sidebarFilter}true{else}false{/if}"
                          data-listing-url="{$countCtrlUrl}"
                          data-is-filtered="{if $criteria}{$criteria->getUserConditions()|count}{else}0{/if}"
                          data-load-facets="{if $listingMode == 'filter_ajax_reload'}true{else}false{/if}"
                          data-instant-filter-result="{if $listingMode != 'full_page_reload'}true{else}false{/if}"
                          class="{if $listingMode != 'full_page_reload'} is--instant-filter{/if}">

                        {if $listingMode === 'full_page_reload'}
                            {include file="frontend/listing/actions/filter-apply-button.tpl" clsSuffix='filter--actions-top'}
                        {/if}

                        {block name="frontend_listing_actions_filter_form_page"}
                            <input type="hidden" name="{$shortParameters['sPage']}" value="1"/>
                        {/block}

                        {block name="frontend_listing_actions_filter_form_search"}
                            {if $term}
                                <input type="hidden" name="{$shortParameters['sSearch']}" value="{$term|escape}"/>
                            {/if}
                        {/block}

                        {block name="frontend_listing_actions_filter_form_sort"}
                            {if $sSort}
                                <input type="hidden" name="{$shortParameters['sSort']}" value="{$sSort|escape}"/>
                            {/if}
                        {/block}

                        {block name="frontend_listing_actions_filter_form_perpage"}
                            {if $criteria && $criteria->getLimit()}
                                <input type="hidden" name="{$shortParameters['sPerPage']}" value="{$criteria->getLimit()|escape}"/>
                            {/if}
                        {/block}

                        {block name="frontend_listing_actions_filter_form_category"}
                            {if !$sCategoryContent && $sCategoryCurrent != $sCategoryStart && {controllerName} != 'search'}
                                <input type="hidden" name="{$shortParameters['sCategory']}" value="{$sCategoryCurrent|escape}" />
                            {/if}
                        {/block}

                        {block name="frontend_listing_actions_filter_form_facets"}
                            <div class="filter--facet-container">
                                {include file="frontend/listing/actions/action-filter-facets.tpl" facets=$facets}
                            </div>
                        {/block}

                        {block name="frontend_listing_actions_filter_active_filters"}
                            <div class="filter--active-container"
                                 data-reset-label="{s name='ListingFilterResetAll'}{/s}">
                            </div>
                        {/block}

                        {if $listingMode === 'full_page_reload'}
                            {include file="frontend/listing/actions/filter-apply-button.tpl" clsSuffix='filter--actions-bottom'}
                        {/if}
                    </form>
                {/block}
                {block name="frontend_listing_action_apply_button"}
                    <button href="#" class="filter--close-btn filter--apply-btn btn--filter">
                        Apply filters
                    </button>
                {/block}
            </div>
        {/block}
    </div>
{/block}

