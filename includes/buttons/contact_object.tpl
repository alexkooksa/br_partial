<button class="{if $class}{$class}{else:}btn btn-outline on-grey btn-contact-object{/if}" onclick="popup('consult', 'Заполните форму, и мы свяжемся с вами в ближайшее время')" data-popup-target="consult">
    <span>{if !is_null($button_text)}{$button_text}{else:}Связаться{/if}</span>
</button>