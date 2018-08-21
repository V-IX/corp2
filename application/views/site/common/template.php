<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ru">

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title><?=$seo['title'];?></title>
	<meta name="keywords" content="<?=$seo['keywords'];?>" />
	<meta name="description" content="<?=$seo['description'];?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<?=link_tag('assets/plugins/font-awesome/css/font-awesome.min.css');?>
	<?=link_tag('assets/plugins/font-opensans/font.css');?>
	<?=link_tag('assets/plugins/font-ptsans/font.css');?>
	<?=link_tag('assets/site/css/reset.css');?>
	<?=link_tag('assets/site/css/template.css');?>
	<?=link_tag('assets/site/css/content.css');?>
	<?=link_tag(array('href' => 'assets/site/colors/azure.css', 'rel' => 'stylesheet', 'type' => 'text/css', 'id' => 'colorCss'));?>
	<?=link_tag('assets/plugins/flexslider/flexslider.css');?>
	
	<?=link_tag('favicon.ico', 'shortcut icon', 'image/ico');?>
	<?=link_tag('favicon.ico', 'shortcut', 'image/ico');?>
	
	<?=script('assets/plugins/jquery/jquery-1.9.1.min.js');?>
	<?=script('assets/plugins/jquery.mask/jquery.maskedinput.js');?>
	<?=script('assets/plugins/bpopup/jquery.bpopup.min.js');?>
	<?=script('assets/plugins/ajaxForm/form.js');?>
	<?=script('assets/site/js/js.js');?>
	
	<? $csrf = $this->security->get_csrf_hash();?>
	<script>
		base_url = "<?=base_url()?>"
		csrf_test_name = "<?=$csrf;?>"
	</script>
	
</head>
<body>
<? $this->load->view('site/common/colors');?>
<div class="super-wrapper">
<div class="header">
	<div class="wrapper">
		<div class="left">
			<a href="<?=base_url();?>" class="logo-wrap">
				<?=img(array('src' => 'assets/uploads/settings/'.$siteinfo['img'], 'class' => 'logo', 'alt' => $siteinfo['mTitle']));?>
				<div class="logo-descr">
					<div class="logo-title"><?=$siteinfo['title'];?></div>
					<div class="logo-text"><?=$siteinfo['descr'];?></div>
				</div>
			</a>
		</div>
		<div class="right mt10">
			<?=anchor('js', 'Заказать звонок', array('data-toggle' => 'popup', 'data-task' => 'Заказать звонок: шапка', 'class' => 'btn'));?>
		</div>
		<div class="header-contacts">
			<div class="phone mb5">
				<div class="phone-mobile">
				    <?=fa('phone text-color mr5');?> <?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?>
				</div>
				<div class="phone-email">
                    <i class="mr15"></i>
                    <?=fa('envelope text-color mr5');?> <?=$siteinfo['email'];?>
				</div>
			</div>
			<div class="adres">
				<?=$siteinfo['adres'];?><br/>
				<?=anchor('contacts', 'показать на карте');?>
			</div>
		</div>
		<div class="tmenu_btn">
            <a href="javascript:void(0)" class="tmenu-btn"><?=fa('bars');?></a>
            <a href="javascript:void(0)" class="tmenu-btn menu-text">Меню</a>
        </div>
	</div>
</div>
<div class="tmenu-wrap">
	<div class="wrapper">
		<div class="tmenu-in">
			<div class="tmenu">
				<ul>
				<? foreach($tmenu as $_tmenu) { ?>
					<li>
						<div class="item">
							<a href="<?=base_url($_tmenu['link']);?>"><?=$_tmenu['title'];?></a>
							<? if(!empty($_tmenu['child'])) { ?>
								<ul class="submenu">
								<? foreach($_tmenu['child'] as $_tchild) { ?>
									<li><?=anchor($_tchild['link'], $_tchild['title'], array('target' => $_tchild['target']));?></li>
								<? } ?>
								</ul>
							<? } ?>
						</div>
					</li>
				<? } ?>
				</ul>
			</div>
		</div>
	</div>
</div>
<? if(isset($slider) and !empty($slider)) $this->load->view('site/common/slider');?>

<? if($lmenu) { ?>
	<? $this->load->view('site/common/tpl-left'); ?>
<? } else { ?>
	<? $this->load->view('site/common/tpl-wide'); ?>
<? } ?>
<!-- // content -->
</div> <!-- // super-wrapper -->
<div class="footer-wrapper">
	<div class="footer">
		<div class="wrapper">
			<div class="row">
			<div class="col-6 footer_menu">
					<div class="row">
					<? foreach($fmenu as $_fmenu) { ?>
						<div class="col-6">
							<div class="fmenu-title"><?=$_fmenu['title'];?></div>
							<ul class="fmenu-list">
							<? foreach($_fmenu['child'] as $child) { ?>
								<li><a href="<?=base_url($child['link']);?>"><?=$child['title'];?></a></li>
							<? } ?>
							</ul>
						</div>
					<? } ?>
					</div>
				</div>
				<div class="col-1 footer_none"></div>
				<div class="col-5 footer_adress">
					<div class="footer-adres mb20">
						<div class="mb5"><?=$siteinfo['adres'];?></div>
						<div class="mb5">
							Тел:
							<?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?>,
							<?=phone($siteinfo['phone2'], $siteinfo['phone2Mask']);?>
						</div>
						<div><a href="javascript:void(0)"><?=$siteinfo['email'];?></a></div>
					</div>
					<div class="copyright mb20">
						<?=date('Y');?> &copy; <?=$siteinfo['title'];?><br/>
						<a href="<?=base_url('pages/confidence');?>">Политика конфиденциальности</a>
					</div>
					<a href="http://narisuemvse.by" target="_blank" class="developer">Разработка и продвижение <span class="link">Narisuemvse.by</span></a>
				</div>
				<div class="col-1"></div>
				
			</div>
		</div>
	</div>
</div>

<div class="popup" id="feedback">
	<div class="close"></div>
	<div class="h3 bold mb5">Заказать звонок</div>
	<div class="h5 mb15">Оставьте заявку и наши специалисты свяжутся с Вами!</div>
	<?=form_open(base_url('contacts/ajaxSend', null, true), array('data-toggle' => 'ajaxForm', 'class' => 'form'));?>
		<div class="form-group mb5">
			<input type="text" name="name" class="form-input" placeholder="Ваше имя" />
		</div>
		<div class="form-group mb10">
			<input type="text" name="phone" class="form-input" placeholder="Ваш телефон *" data-rules="required" />
		</div>
		<input type="hidden" name="title" id="popupTask" value="Обратная связь" />
		<button class="btn btn-big wide">Оставить заявку</button>
	<?=form_close();?>
</div>
<div class="popup w325" id="thanks">
	<div class="close"></div>
	<div class="h3 bold mb5">Спасибо за заявку!</div>
	<div class="h5">Наши специалисты свяжутся<br/>с Вами в ближайшее время!</div>
</div>


</body>
</html>