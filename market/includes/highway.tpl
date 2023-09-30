{foreach $highway as $item}
	<p class="e-icon-map-green property-item-highway">{$item.name}{if $item.desc}<span>, {$item.desc}</span>{/if}</p>
{/foreach}