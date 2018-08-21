<ul class="news-list">
<? foreach($items as $item) { ?>
	<li>
		<a href="<?=base_url(uri(1).'/'.$item['alias']);?>" class="news-list-item">
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
<? } ?>
</ul>
<?=$this->pagination->create_links();?>