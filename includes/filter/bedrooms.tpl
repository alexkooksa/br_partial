<div class="filter-item{if array_key_exists('bedrooms', $filter_active)} is-applied{/if}" data-filter-type="multiselect" data-filter-name="bedrooms">
    <select id="class" data-filter-url="bedrooms" class="{if is_null($homepage)}select-rounded{else:}borderless{/if} select-small" multiple data-none-text="Кол-во спален">
		{foreach $bedrooms as $b}
			<option value="{$b}" {if in_array($b, $filter_active['bedrooms'])}selected{/if}>{$b}</option>
		{/foreach}
    </select>
</div>