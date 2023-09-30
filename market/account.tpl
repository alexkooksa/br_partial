<div class="breadcrumbs-wrap">
	<div class="wrap">
		<ul class="breadcrumbs " itemscope itemtype="http://schema.org/BreadcrumbList">
			<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
				<a itemprop="item" href="{site_url('')}">
					<span itemprop="name">{tlang('Home')}</span>
				</a>
			</li>
			<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
				<span itemprop="item"><span itemprop="name">Личный кабинет</span></span>
			</li>
		</ul>
	</div>
</div>
<section class="account-page">
	<div class="wrap">
		<h1>Личный кабинет</h1>
		<ul class="tabs floating-tabs" data-tabs-name="account">
			<div class="tab-slider"></div>
			<li data-tab="saved-search" class="tab-item"><span>{if !getMobile()}Сохраненные поиски{else:}Поиски{/if}</span></li>
			<li data-tab="settings" class="tab-item"><span>Настройки</span></li>
		</ul>

		<div class="content-list" data-tabs-name="account">
			<div class="tab-content" data-tab-content="saved-search">
				<ul class="saved-search-list rows-large">
					<li class="saved-search-item ui-block">
						<a href="#" class="saved-search-link h5 link">Сохраненный поиск 1</a>
						<button class="e-icon-delete btn-delete-search"><span>Удалить</span></button>
					</li>
					<li class="saved-search-item ui-block">
						<a href="#" class="saved-search-link h5 link">Сохраненный поиск 2</a>
						<button class="e-icon-delete btn-delete-search"><span>Удалить</span></button>
					</li>
					<li class="saved-search-item ui-block">
						<a href="#" class="saved-search-link h5 link">Сохраненный поиск 3</a>
						<button class="e-icon-delete btn-delete-search"><span>Удалить</span></button>
					</li>
				</ul>
			</div>
			<div class="tab-content" data-tab-content="settings">
				<div class="form-wrap-small">
					<form class="ui-block">
						<h3>Личные данные</h3>
						<div class="textbox">
							<label>Имя</label>
							<input type="text" name="" value="Имя юзера" />
						</div>
						<br>
						<input class="btn btn-primary" type="submit" value="Сохранить">
					</form>

					<form action="/market/account?password=1" class="ui-block" method="POST">
						{if $errors}
							<p style="color:#cc0000">{echo $errors}</p>
						{/if}
						<h3>Изменение пароля</h3>
						<div class="textbox">
							<label>Новый пароль</label>
							<input type="password" name="password" value="{if isset($_GET['password']) && $_POST['password']}{echo $_POST['password']}{/if}" required />
						</div>
						<div class="textbox">
							<label>Подтверждение нового пароля</label>
							<input type="password" name="password_confirm" value="{if isset($_GET['password']) && $_POST['password_confirm']}{echo $_POST['password_confirm']}{/if}" required />
						</div>
						<br>
						<input class="btn btn-primary" type="submit" value="Сохранить">
						{form_csrf()}
					</form>
				</div>
			</div>
		</div>
	</div>
</section>