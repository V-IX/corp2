<div class="news-tiles">
	<ul class="row">
	<? $i = 1; foreach($items as $item) { ?>
		<li class="col-4">
			<a href="<?=base_url(uri(1).'/'.$item['alias']);?>" class="news-tiles-item">
				<div class="clearfix">
					<div class="img">
						<?=check_img('assets/uploads/'.uri(1).'/thumb/'.$item['img'], array('alt' => $item['mTitle']));?>
					</div>
					<div class="descr">
						<div class="date"><?=date('d.m.Y', strtotime($item['addDate']));?></div>
						<div class="title"><?=$item['title'];?></div>
						<div class="brief"><?=$item['brief'];?></div>
					</div>
				</div>
			</a>
		</li>
		<? if($i%3 == 0) { ?><li class="floater"></li><? } ?>
	<? $i++;} ?>
	</ul>
</div>
<?=$this->pagination->create_links();?>