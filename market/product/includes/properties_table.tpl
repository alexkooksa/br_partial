<table class="props-table">
	<tbody>
		{if $add_klass && $product.klass != ''}
			<tr>
				<td>Класс</td>
				<td>{$product.klass}</td>
			</tr>
		{/if}
		{foreach $properties as $k => $v}
			{if count($v) > 0 && !($k == 'Метро' && $product.category_id == 3)}
				<tr>
					<td>{$k}</td>
					<td>{echo implode(', ', $v)}</td>
				</tr>
			{/if}
		{/foreach}
	</tbody>
</table>