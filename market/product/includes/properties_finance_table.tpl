<table class="props-table">
	<tbody>
		{foreach $properties as $k => $v}
			{if $k == 'finance'}
				{foreach $v as $kv => $vv}
					{if $vv != 0}
						<tr data-dealtype="{echo mb_stripos($kv, 'стоимость') !== false ? 2 : 1}">
							<td>{$kv}</td>
							<td>{$vv} {echo $CI->cursymb}</td>
						</tr>
					{/if}
				{/foreach}
			{else:}
				{if count($v) > 0}
					<tr>
						<td>{$k}</td>
						<td>{echo implode(', ', $v)}</td>
					</tr>
				{/if}
			{/if}
			
		{/foreach}
	</tbody>
</table>