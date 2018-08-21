<? if(empty($items)) { ?>

<?=action_result('info', 'У вас не создано еще ни одной записи. Вы можете '.anchor('admin/'.uri(2).'/create', 'создать запись.'));?>

<? } else { ?>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Изображение</th>
			<th>Заголовок</th>
			<th>Добавлено</th>
			<th></th>
			<th class="w175">Действия</th>
		</tr>
	</thead>
	<tbody>
	<? foreach($items as $item) { ?>
		<? $p = $item['idParent'] == 0 ? true : false;?>
		<tr <? if($p) { ?>class="parent-tr"<? } else { ?>data-parent="<?=$item['idParent'];?>"<? } ?>>
			<td class="text-center w100">
				<?=check_img('assets/uploads/'.$folder.'/thumb/'.$item['img'], array('class' => 'w75'));?>
			</td>
			<td>
				<? if($p) { ?><div class="parent-toggle" data-target="<?=$item['idItem'];?>">
					<?=fa('plus-square-o mr5');?>
					<?=fa('minus-square-o none mr5');?>
				<? } ?>
				<span class="item-title"><?=$item['title'];?></span>
				<div class="h6 text-gray">
					Каталог <?#=fa('angle-right ml5 mr5');?> &raquo;
					<? if($item['idParent'] != 0) { ?><?=$parents[$item['idParent']];?> &raquo;<? } ?>
					<?=$item['title'];?>
				</div>
				<? if($p) { ?></div><? } ?>
			</td>
			<td><?=date('d.m.Y H:i', strtotime($item['addDate']));?></td>
			<td class="text-right" nowrap>
				<?=$item['home'] == 1 ? fa('home text-gray mr5') : '';?>
				<?=$item['visibility'] == 1 ? fa('eye text-success') : fa('eye-slash text-error');?>
			</td>
			<td class="w175">
				<?=anchor('admin/'.uri(2).'/view/'.$item['idItem'], '<i class="fa fa-eye"></i>', array('class' => 'btn btn-info btn-icon'));?>
				<?=anchor('admin/'.uri(2).'/edit/'.$item['idItem'], '<i class="fa fa-pencil"></i>', array('class' => 'btn btn-success btn-icon'));?>
				<?=anchor('admin/'.uri(2).'/delete/'.$item['idItem'], '<i class="fa fa-trash"></i>', array('class' => 'btn btn-error btn-icon delete-btn'));?>
			</td>
		</tr>
	<? } ?>
	</tbody>
</table>

<div class="form-actions mt20">
	<?=anchor('admin/'.uri(2).'/create', 'Добавить запись', array('class' => 'btn btn-success'));?>
</div>

<div class="modal fade" id="delModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog w500">
		<div class="modal-content">
			<div class="modal-header">
				<div class="modal-close" data-dismiss="modal" aria-label="Close"></div>
				<div class="modal-title">Подтвердить удаление записи</div>
			</div>
			<?=form_open('', array('id' => 'delForm'))?>
			<div class="modal-body">
				Вы действительно хотите удалить запись <span class="medium" id="delTitle"></span>?
			</div>
			<div class="modal-footer text-right">
				<button class="btn btn-success">Подтвердить</button>
				<span class="btn btn-error" data-dismiss="modal">Отмена</span>
				<input type="hidden" name="delete" value="delete" />
			</div>
			<?=form_close();?>
		</div>
	</div>
</div>


<script>
	$('.delete-btn').click(function(e){
		e.preventDefault();
		$('#delForm').attr('action', $(this).attr('href'));
		$('#delTitle').text('"' + $(this).closest('tr').find('.item-title').text() + '"');
		$('#delModal').modal('show');
		return false;
	});
	
	$('.parent-toggle').click(function(){
		t = $(this).attr('data-target');
		$(this).find('.fa').toggleClass('none');
		$('[data-parent="'+t+'"]').toggle();
	});
</script>

<? } ?>