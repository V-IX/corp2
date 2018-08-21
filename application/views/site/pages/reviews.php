<? if(empty($items)) { ?>
	<div class="note">Отзывов пока нет. Вы можете стать первым!</div>
<? } else { ?>
	<ul class="reviews-list">
	<? foreach($items as $item) { ?>
		<li class="reviews-item">
			<div class="clearfix">
				<div class="img"><?=check_img('assets/uploads/'.uri(1).'/thumb/'.$item['img'], array('alt' => $siteinfo['mTitle']), 'user.png');?></div>
				<div class="descr">
					<div class="title"><?=$item['name'];?></div>
					<div class="text"><?=nl2br($item['text']);?></div>
					<? if($item['link'] != '') { ?>
						<div class="mt5"><a href="<?=$item['link']?>"><?=$item['link'];?></a></div>
					<? } ?>
				</div>
			</div>
		</li>
	<? } ?>
	</ul>
	<?=$this->pagination->create_links();?>
<? } ?>

<div class="mt40 mb25">
	<div class="page-title">Оставить отзыв</div>
</div>
<?=form_open('reviews/ajaxSend', array('class' => 'reviews-form', 'data-toggle' => 'ajaxForm', 'data-thanks' => '#reviewsThanks'));?>
	<div class="form-group row">
		<div class="col-6">
			<input type="text" name="name" class="form-input" placeholder="Ваше имя *" data-rules="required" />
		</div>
		<div class="col-6">
			<input type="text" name="phone" class="form-input" placeholder="Ваш телефон" />
		</div>
	</div>
	<div class="form-group row">
		<div class="col-12">
			<textarea name="text" class="form-input" rows="3" placeholder="Текст отзыва *" data-rules="required"></textarea>
		</div>
	</div>
	<div class="form-group row">
		<div class="col-12">
			<input type="text" name="link" class="form-input" placeholder="Ссылка на соц сети" />
		</div>
	</div>
	<button class="btn">Оставить отзыв</button>
<?=form_close();?>

<div class="popup w325" id="reviewsThanks">
	<div class="close"></div>
	<div class="h3 bold mb5">Спасибо за отзыв!</div>
	<div class="h5 text-gray">Отзыв появится после модерации.</div>
</div>