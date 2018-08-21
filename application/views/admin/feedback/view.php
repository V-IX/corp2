<div class="row mb15">
	<div class="col-3 medium">Тема:</div>
	<div class="col-9"><?=$item['title'];?></div>
</div>
<div class="row mb15">
	<div class="col-3 medium">Имя:</div>
	<div class="col-9"><?=$item['name'];?></div>
</div>
<div class="row mb15">
	<div class="col-3 medium">Телефон:</div>
	<div class="col-9"><?=$item['phone'];?></div>
</div>
<div class="row mb15">
	<div class="col-3 medium">E-mail:</div>
	<div class="col-9"><?=$item['email'];?></div>
</div>
<div class="row mb15">
	<div class="col-3 medium">Комментарий:</div>
	<div class="col-9"><?=$item['text'];?></div>
</div>

<div class="form-actions">
	<?=anchor('admin/'.uri(2), 'Вернуться назад', array('class' => 'btn'))?>
	<?=anchor('#delModal', '<i class="fa fa-trash"></i>', array('class' => 'btn btn-icon btn-error right', 'data-toggle' => 'modal'))?>
</div>

<div class="modal fade" id="delModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog w500">
		<div class="modal-content">
			<div class="modal-header">
				<div class="modal-close" data-dismiss="modal" aria-label="Close"></div>
				<div class="modal-title">Подтвердить удаление записи</div>
			</div>
			<?=form_open('admin/'.uri(2).'/delete/'.$item['idItem'], array('id' => 'delForm'))?>
			<div class="modal-body">
				Вы действительно хотите удалить запись <span class="medium">"<?=$item['title']?>"</span>?
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