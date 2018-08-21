<div class="text-editor"><?=$item['text'];?></div>
<div class="row mt20">
	<div class="col-6 mt5">
		<?=anchor('', 'вернуться на главную');?>
	</div>
	<div class="col-6">
		<div class="social text-right">
			<div class="social-label mr10">Поделиться:</div>
			<div class="social-init" data-toggle="social"></div>
			<?=script('assets/plugins/share42/share42.js');?>
		</div>
	</div>
</div>