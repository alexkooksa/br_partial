{if $filter_subway}
	{view('popups/metro.tpl', ['filter_subway' => $filter_subway])}
{/if}
{if $filter_district}
	{view('popups/district.tpl', ['filter_district' => $filter_district])}
{/if}
{if $filter_location}
	{view('popups/location.tpl', ['filter_location' => $filter_location])}
{/if}

{if $filter_direction}
	{view('popups/direction.tpl', ['filter_direction' => $filter_direction])}
{/if}
{if $filter_highway}
	{view('popups/highway.tpl', ['filter_highway' => $filter_highway])}
{/if}