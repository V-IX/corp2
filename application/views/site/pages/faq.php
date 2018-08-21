<? if(empty($items)) { ?>
	<div class="note">Ответов пока нет. Вы можете задать свой вопрос!</div>
<? } else { ?>
	<ul class="faq-list">
	<? foreach($items as $item) { ?>
		<li>
			<div class="faq-item">
				<a href="javascipt:void(0)" class="title" data-toggle="faq">
					<?=fa('chevron-right');?>
					<?=$item['title'];?>
				</a>
				<div class="text">
					<div class="text-editor"><?=$item['text'];?></div>
				</div>
			</div>
		</li>
	<? } ?>
	</ul>
	<?=$this->pagination->create_links();?>
<? } ?>

<div class="mt40 mb25">
	<div class="page-title">Не нашли ответ?</div>
	<div class="mt10 text-gray">Задайте свой вопрос нашим специалистам</div>
</div>
<?=form_open('faq/ajaxSend', array('class' => 'reviews-form', 'data-toggle' => 'ajaxForm', 'data-thanks' => '#reviewsThanks'));?>
	<div class="form-group row">
		<div class="col-6">
			<input type="text" name="name" class="form-input" placeholder="Ваше имя *" data-rules="required" />
		</div>
		<div class="col-6">
			<input type="text" name="phone" class="form-input" placeholder="Ваш телефон *" data-rules="required" />
		</div>
	</div>
	<div class="form-group row">
		<div class="col-12">
			<input type="text" name="email" class="form-input" placeholder="Ваш email" />
		</div>
	</div>
	<div class="form-group row">
		<div class="col-12">
			<textarea name="title" class="form-input" rows="3" placeholder="Ваш вопрос *" data-rules="required"></textarea>
		</div>
	</div>
	<button class="btn">Задать вопрос</button>
<?=form_close();?>

<div class="popup w325" id="faqThanks">
	<div class="close"></div>
	<div class="h3 bold mb5">Ваш вопрос принят!</div>
	<div class="h5">Наши специалисты свяжутся<br/>с Вами в ближайшее время!</div>
</div>

<script>
	$('[data-toggle="faq"]').click(function(){
		el = $(this);
		p = el.closest('.faq-item');
		text = p.find('.text');
		if(p.hasClass('_open'))
		{
			text.slideUp(500);
			p.removeClass('_open');
		} else {
			text.slideDown(500);
			p.addClass('_open');
		}
	});
</script>