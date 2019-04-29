
{namespace name="frontend/listing/listing_actions"}
{extends file="parent:frontend/listing/actions/action-filter-button.tpl"}


{block name="frontend_listing_actions_filter_button"}
    {if $facets|count > 0}
        <div class="action--filter-btn">
            <a href="#"
               class="filter--trigger btn is--small"
               data-filter-trigger="true"
               data-offcanvas="true"
               data-offCanvasSelector=".action--filter-options"
               data-closeButtonSelector=".filter--close-btn">
                <span class="icon--filter"></span>
                <span class="action--filter-title">{s name='ListingFilterButton'}{/s}</span>
                <span class="action--collapse-icon"></span>
                {block name="navigation_category_toggle"}
                    <label class="toggle_switch">
                        <input type="checkbox" name="toggle">
                        <span class="slider"></span>
                    </label>
                {/block}
            </a>
        </div>
    {/if}
{/block}