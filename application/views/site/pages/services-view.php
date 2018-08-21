<? if(!empty($items)) { ?>
<ul class="services-sublist mb40">
<? foreach($items as $child) { ?>
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

<div class="text-editor"><?=$item['text'];?></div>