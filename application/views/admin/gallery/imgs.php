<div class="page-preview">
	<div class="img">
		<?=check_img('assets/uploads/'.$folder.'/thumb/'.$item['img']);?>
	</div>
	<div class="descr">
		<div class="h4 medium mb15"><?=$item['title'];?></div>
		<div class="mb20">
			<?=$item['visibility'] == 1 ? fa('eye text-success') : fa('eye-slash text-error'); ?>
			<i class="mr10"></i>
			<?=fa('calendar mr5 text-gray');?> <?=date('d.m.Y', strtotime($item['addDate']));?>
			<i class="mr15"></i>
			<?=fa('clock-o mr5 text-gray');?> <?=date('H:i', strtotime($item['addDate']));?>			
		</div>
		<div class="">
			<?=fa('link mr5 text-gray fa-fw');?> 
			<?=anchor($folder.'/'.$item['alias'], '', array('target' => 'blank'));?>
		</div>
	</div>
</div>

<hr class="mt30 mb30" />

<?=form_open_multipart('admin/gallery/upload');?>
<input type="hidden" name="idParent" value="<?=uri(4);?>" />
<div class="row">
	<div class="col-8">
		<div class="input-file">
			<input type="text" class="form-input" readonly placeholder="Файл не выбран" />
			<button class="btn">Обзор</button>
			<input type="file" multiple name="userfile[]" size="20" accept="image/*" class="none" />
		</div>
	</div>
	<div class="col-4">
		<button class="btn btn-success"><i class="fa fa-upload mr5"></i> Загрузить файлы</button>
	</div>
</div>
<?=form_close();?>

<hr class="mt30 mb30" />

<?if(empty($items)) { ?>

<div class="note note-info">
	В альбоме нет ни одной фотографии
</div>

<? } else { ?>


<div class="gallery clearfix">
<? foreach($items as $img) { ?>
	<div class="img">
		<?=img(array('src' => 'assets/uploads/'.$folder.'/thumb/'.$img['img'], 'class' => 'wide block'));?>
		<?=anchor('javascript:void(0)', fa('times'), array('class' => 'btn btn-error btn-icon', 'data-toggle' => 'delete', 'data-item' => $img['idItem']));?>
	</div>
<? } ?>
</div>

<? } ?>

<div class="form-actions mt20">
	<?=anchor('admin/'.uri(2).'/view/'.$item['idItem'], 'Вернуться к альбому', array('class' => 'btn btn-success'));?>
	<?=anchor('admin/'.uri(2), 'Вернуться к списку альбомов', array('class' => 'btn'));?>
</div>

<script>
	var count = <?=$count;?>;
	
	$('[data-toggle="delete"]').click(function(){
		
		var obj = $(this),
			i = $(this).attr('data-item');
		
		//alert(n);
		if(confirm('Удалить изображение?'))
		{
			$.ajax({
				type  : "POST",
				url   : '<?=base_url('admin/gallery/ajaxDelete');?>',
				data  : {
					csrf_test_name : '<?=$this->security->get_csrf_hash();?>',
					idItem: i
				},
				cashe : false,
					
				error   : function () {
					alert('Ошибка запроса');
				},
				success : function(data) {
					if(data.error)
					{
						alert(data.error);
					}
					if(data.success)
					{
						obj.closest('.img').remove();
						count = count - 1;
						$('#countImgs').text(count);
						alert('Фото успешно удалено!');
					}
				},
			});
		}
	});
</script>