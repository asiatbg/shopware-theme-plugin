{extends file="parent:frontend/listing/actions/action-sorting.tpl"}

{*{block name='frontend_listing_actions_sort_field'}*}
{*    {$listingMode = {config name=listingMode}}*}
{*    <div class="sort--select select-field">*}
{*        <input type="hidden"*}
{*               name="{$shortParameters.sSort}"*}
{*               data-auto-submit="true"*}
{*               {if $listingMode != 'full_page_reload'}data-loadingindicator="false"{/if}>*}

{*        <div class="select">*}
{*            <span class="placeholder">Sort By</span>*}
{*            <i class="fas fa-chevron-up"></i>*}
{*        </div>*}

{*        <ul class="sort--field action--field">*}

{*            {foreach $sortings as $sorting}*}
{*                {block name="frontend_listing_actions_sort_field_release"}*}
{*                    <li id="{$sorting->getId()}">{$sorting->getLabel()}</li>*}
{*                {/block}*}
{*            {/foreach}*}

{*            {block name='frontend_listing_actions_sort_values'}{/block}*}
{*        </ul>*}
{*    </div>*}
{*{/block}*}