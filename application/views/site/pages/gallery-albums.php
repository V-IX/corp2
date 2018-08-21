<? if(isset($items) and count($items) > 1) { ?>

<div class="gallery-albums">
	<div class="gallery-slider" id="gallerySlider">
		<ul>
		<? $i = 1; foreach($items as $item) { ?>
			<li>
				<a href="<?=base_url(uri(1).'/'.$item['alias'])?>" class="gallery-item">
					<div class="img">
						<?=check_img('assets/uploads/gallery/thumb/'.$item['img'], array('alt' => $item['mTitle']));?>
						<div class="descr">
							<h5 class="title text-overflow"><?=$item['title'];?></h5>
							<div class="count"><?=$item['count_imgs'];?> фото</div>
						</div>
					</div>
				</a>
			</li>
		<? $i++;} ?>
		</ul>
	</div>
	<? if(count($items) > 3) { ?>
		<a href="javascript:void(0)" class="gallery-btn _prev" id="galleryPrev" onclick="gallery.move(-1)"><?=fa('angle-left');?></a>
		<a href="javascript:void(0)" class="gallery-btn _next" id="galleryNext" onclick="gallery.move(1)"><?=fa('angle-right');?></a>
	<? } ?>
</div>
<div class="gallery-sep"></div>

<? } ?>

<ul class="gallery-imgs clearfix mb30">
<? foreach($imgs as $img) { ?>
	<li>
		<a href="<?=base_url('assets/uploads/gallery/'.$img['img']);?>" data-toggle="vix">
			<?=check_img('assets/uploads/gallery/thumb/'.$img['img'], array('alt' => $pageinfo['mTitle']));?>
		</a>
	</li>
<? } ?>
</ul>

<?=link_tag('assets/plugins/vix-gallery/css/gallery.css');?>
<?=script('assets/plugins/vix-gallery/js/jquery.vix-gallery.js');?>
<script>$('[data-toggle="vix"]').gallery();</script>

<? if(isset($items) and count($items) > 3) { ?>
<?=script('assets/plugins/tiny/tiny.js');?>
<script>
	var gallery = new TINY.slider.slide('gallery',{
		id: 'gallerySlider',
		auto: false,
		left:'galleryPrev',
		right:'galleryNext'
	}); 
</script>
<? } ?>