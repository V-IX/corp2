<ul class="gallery-imgs clearfix mb30">
<? foreach($imgs as $img) { ?>
	<li>
		<a href="<?=base_url('assets/uploads/gallery/'.$img['img']);?>" data-toggle="vix">
			<?=check_img('assets/uploads/gallery/thumb/'.$img['img'], array('alt' => $pageinfo['mTitle']));?>
		</a>
	</li>
<? } ?>
</ul>

<div class="text-editor mt30"><?=$item['text'];?></div>

<?=link_tag('assets/plugins/vix-gallery/css/gallery.css');?>
<?=script('assets/plugins/vix-gallery/js/jquery.vix-gallery.js');?>
<script>$('[data-toggle="vix"]').gallery();</script>