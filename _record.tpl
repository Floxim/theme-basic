<div 
    fx:template="record" 
    fx:b="record" 
    fx:styled
    fx:with="$item">
    {@image_width type="number" default="700"}
    
    {set $image_size = 'max-width: ' . ($image_width * 1.5) . '; max-height: '.$image_width}
    
    <div fx:e="image {if !$item.image}no-image{else}has-image{/if}">
        <div fx:e="extra-top" fx:hide-empty>
            {apply record_extra_top /}
        </div>
        <img fx:aif="$item.image" fx:e="image-img" src="{$item.image | fx::image : $image_size}" alt="{$name}" />
    </div>
    <div fx:e="data">
        <div fx:e="description">
            <div>{$description}</div>
        </div>
        <div fx:e="extra" fx:hide-empty>
            {apply record_extra /}
        </div>
        <div fx:e="full-text"{if $container_width} style="width: {$container_width}px;"{/if}>{$full_text}</div>
    </div>
</div>

{preset id="record#person" of="floxim.corporate.person:record"}
    {use as="record_extra_top"}
        <span fx:e="extra-name">{$name}</span>
        <span fx:e="extra-separator">&bull;</span>
        <span fx:e="occupation" fx:aif="$occupation">{$occupation/}</span>
    {/use}
{/preset}


{preset id="record#person_unnamed" of="floxim.corporate.person:record"}
    {use as="record_extra_top"}
        <span fx:e="extra-birthday">{$birthday}</span>
    {/use}
{/preset}

{preset id="record#news" of="floxim.blog.news:record"}
    {use as="record_extra_top"}
        {apply floxim.ui.date:date with $date = $publish_date /}
    {/use}
{/preset}

{preset id="record#service" of="floxim.corporate.service:record"}
    {use as="record_extra_top"}
        <span fx:e="price" fx:aif="$price">{$price /}</span>
    {/use}
{/preset}