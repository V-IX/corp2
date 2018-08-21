<ul class="services-list mb50">
<? foreach($items as $item) { ?>
	<li>
		<a href="<?=base_url('services/'.$item['alias']);?>" class="services-parent <?=!empty($item['child']) ? '_not_empty' : '';?>"><?=$item['title'];?></a>
		<? if(!empty($item['child'])) { ?>
			<ul class="services-sublist mt20">
			<? foreach($item['child'] as $child) { ?>
				<li>
					<a href="<?=base_url('services/'.$child['alias']);?>" class="services-item">
					<? if($siteinfo['showImg']) { ?>
						<div class="img">
							<?=check_img('assets/uploads/services/thumb/'.$child['img'], array('alt' => $child['mTitle']), 'services.png');?>
						</div>
					<? } ?>
						<div class="title">
							<?=$child['title'];?>
						</div>
					</a>
				</li>
			<? } ?>
			</ul>
		<? } ?>
	</li>
<? } ?>
</ul>