<button class="{if $class}{$class}{else:}btn btn-primary{/if}{if $large} btn-large{/if}" onclick="popup('consult', 'Получить консультацию')" data-popup-target="consult">
    <span>{if $text}{$text}{else:}{tlang('Получить консультацию')}{/if}</span>
</button>