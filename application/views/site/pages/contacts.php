<div class="map mb30">
	<?=htmlspecialchars_decode($siteinfo['map']);?>
</div>
<div class="row">
	<div class="col-5">
		<div class="page-title mb25"><?=$pageinfo['title'];?></div>
		<div class="text-editor">
			<div class="mb10 text-gray h6">По всем вопросам, связанными с работой центра,<br/>а также партнёрам обращаться по телефонам:</div>
			<div class="mb5">
				Тел: <?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?>
				<? if($siteinfo['phone2']) { ?><br/>Тел: <?=phone($siteinfo['phone2'], $siteinfo['phone2Mask']);?><? } ?>
				<? if($siteinfo['phoneCity']) { ?><br/>Городской: <?=phone($siteinfo['phoneCity'], $siteinfo['phoneCityMask']);?><? } ?>
			</div>
			<div class="mb20">
				e-mail: <?=$siteinfo['email'];?>
				<? if($siteinfo['skype']) { ?><br/>skype: <?=$siteinfo['skype'];?><? } ?>
			</div>
			<div class="">
				<span class="semibold"><?=$siteinfo['title'];?></span><br/>
				<?=$siteinfo['adres'];?>
			</div>
		</div>
	</div>
	<div class="col-7">
		<div class="page-title mb25">Остались вопросы?</div>
		<?=form_open('contacts/ajaxSend', array('data-toggle' => 'ajaxForm', 'class' => 'reviews-form'));?>
			<div class="form-group row mb10">
				<div class="col-6"><input type="text" name="name" class="form-input" placeholder="Представьтесь, пожалуйста" /></div>
				<div class="col-6"><input type="text" name="phone" class="form-input" placeholder="Ваш телефон *" data-rules="required" /></div>
			</div>
			<div class="row mb10">
				<div class="col-12"><textarea name="text" class="form-input" rows="3" placeholder="Ваш вопрос"></textarea></div>
			</div>
			<input type="hidden" name="title" value="Заказать звонок - контакы" />
			<button class="btn">Заказать звонок</button>
		<?=form_close();?>
	</div>
</div>