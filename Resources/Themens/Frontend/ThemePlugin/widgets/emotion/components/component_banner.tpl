{extends file="parent:widgets/emotion/components/component_banner.tpl"}

{block name="widget_emotion_component_banner_mapping"}
    {if $Data.bannerMapping}
        <div class="banner--mapping {$Data.bannerPosition}">
            {foreach $Data.bannerMapping as $mapping}
                <a href="{$mapping.link}"
                   class="banner--mapping-link"
                   style="width:{({$mapping.width} / ({$Data.fileInfo.width} / 100))|round:3}%;
                           height:{({$mapping.height} / ({$Data.fileInfo.height} / 100))|round:3}%;
                           left:{({$mapping.x} / ({$Data.fileInfo.width} / 100))|round:3}%;
                           top:{({$mapping.y} / ({$Data.fileInfo.height} / 100))|round:3}%"
                        {if $mapping.as_tooltip && $mapping.title} title="{$mapping.title|escape}"{/if}
                        {if $mapping.linkLocation eq "external"} target="_blank"{/if}>&nbsp;</a>
            {/foreach}
        </div>
    {elseif $Data.link}
        <a href="{$Data.link}" class="banner--link"
                {if $Data.banner_link_target} target="{$Data.banner_link_target}"{/if}
                {if $Data.title} title="{$Data.title|escape}"{/if}>
{*            <div class="wrapper">*}
                <h2 class="banner--title">{$Data.title}</h2>
{*            </div>*}
        </a>

    {elseif $Data.title && !$Data.link}
        <h1 class="banner--title">{$Data.title}</h1>
    {/if}
{/block}