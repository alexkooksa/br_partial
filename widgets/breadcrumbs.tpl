{$loc_last_item = array_pop($navi_cats)}

{if getMobile() && $CI->uri->segment(1) == 'service' && $CI->uri->segment(1) !== ''}
    <div class="breadcrumbs-wrap {if $go_back}has-goback{/if}">
        <div class="wrap"><a href="/{$go_back.full_url}" class="link-back">Все услуги</a></div>
    </div>
{else:}
    {if $loc_last_item}
        <div class="breadcrumbs-wrap {if $go_back}has-goback{/if}">
            <div class="wrap">
                <ul class="breadcrumbs " itemscope itemtype="http://schema.org/BreadcrumbList">
                    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                        <a itemprop="item" href="{site_url('')}">
                            <span itemprop="name">{tlang('Home')}</span>
                            <meta itemprop="position" content="1" />
                        </a>
                    </li>
                    {$i=2}
                    {foreach $navi_cats as $item}
                        {if !is_null($item.path_url) && $item.path_url != '' && $item.name != ''}
                            <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                                <a itemprop="item" href="{site_url($item.path_url)}">
                                    <span itemprop="name">{$item.name}</span>
                                    <meta itemprop="position" content="{$i}" />
                                </a>
                            </li>
                            {$i++}
                        {/if}

                    {/foreach}

                    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                        <span itemprop="item"><span itemprop="name">{$loc_last_item.name}</span></span>
                        <meta itemprop="position" content="{echo $i}" />
                    </li>
                </ul>
                {if $go_back}<a href="/{$go_back.full_url}" class="link-back">{$go_back.name}</a>{/if}
            </div>
        </div>
    {/if}
{/if}