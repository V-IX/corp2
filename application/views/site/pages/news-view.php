<div class="row mb20">
	<div class="col-6 mt5 text-gray">
		<?=translate_date($item['addDate']);?> в <?=date('H:i', strtotime($item['addDate']));?>
	</div>
	<div class="col-6">
		<div class="social text-right">
			<div class="social-label mr10">Поделиться:</div>
			<div class="social-init" data-toggle="social"></div>
			<?=script('assets/plugins/share42/share42.js');?>
		</div>
	</div>
</div>
<div class="text-editor"><?=$item['text'];?></div>
<div class="mt30"><?=anchor(uri(1), 'вернуться к списку');?></div>

<? if(!empty($items)) { ?>

<div class="page-title mt40 mb25">Читайте также:</div>

<div class="news-tiles">
	<ul class="row">
	<? $i = 1; foreach($items as $item) { ?>
		<li class="col-6">
			<a href="<?=base_url(uri(1).'/'.$item['alias']);?>" class="news-tiles-item">
				<div class="clearfix">
					<div class="img">
						<?=check_img('assets/uploads/'.uri(1).'/thumb/'.$item['img'], array('alt' => $item['mTitle']));?>
					</div>
					<div class="descr">
						<div class="date"><?=date('d.m.Y', strtotime($item['addDate']));?></div>
						<div class="title"><?=$item['title'];?></div>
					</div>
				</div>
			</a>
		</li>
		<? if($i%2 == 0) { ?><li class="floater"></li><? } ?>
	<? $i++;} ?>
	</ul>
</div>

<? } ?>