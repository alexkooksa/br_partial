{foreach $subway as $item}
	<p class="property-item-metro"><i data-sub-color="{if $item.color != ''}{$item.color}{/if}"></i><span class="metro-title">{if $add_prefix}м. {/if}{$item.name}</span>{if $item.desc}<span class="e-icon-walk metro-walk">{$item.desc}</span>{/if}</p>
{/foreach}