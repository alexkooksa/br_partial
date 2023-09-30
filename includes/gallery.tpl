{$images = $CI->load->module('gallery')->gallery_m->get_album_images($album)}
{if count($images) > 0}
    <div>
        {foreach $images as $image}
            <div>
                <a data-fancybox="gallery" href="/uploads/gallery/{$image.album_id}/{$image.file_name}_prev{$image.file_ext}">
                    <img src="/uploads/gallery/{echo thumbnail($image['album_id'].'/'.$image['file_name'].'_prev'.$image['file_ext'], 450, 300, true)}" alt="">
                </a>
            </div>
        {/foreach}
    </div>
{/if}