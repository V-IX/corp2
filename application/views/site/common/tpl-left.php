<div class="content">
	<div class="wrapper">
	<div class="right-side">
			<? if(!$tpl_home) { ?>
				<?=$this->breadcrumbs->create_links();?>
				<div class="page-top">
					<h1 class="page-title"><?=isset($item['title']) ? $item['title'] : $pageinfo['title'];?></h1>
					<? if(!isset($item) and $pageinfo['brief'] != '') { ?><div class="page-descr"><?=$pageinfo['brief'];?></div><? } ?>
				</div>
				<div class="page-content">
			<? } ?>
				<? if($view) $this->load->view('site/'.$view); ?>
			<? if(!$tpl_home) { ?>
				</div>
				<? if(!isset($item) and $pageinfo['text'] != '') { ?><div class="text-editor mt40"><?=$pageinfo['text'];?></div><? } ?>
			<? } ?>
		</div>
		<div class="left-side">
			<div class="page-title mb25"><?=$siteinfo['menuTitle'];?></div>
			<? if(uri(1) != 'services') { ?>
				<ul class="left-services mb30">
				<? foreach($lmenu as $_service) { ?>
					<li>
						<?=anchor('services/'.$_service['link'], $_service['title'], array('class' => null));?>
						<? if(!empty($_service['child'])) { ?>
							<ul class="left-sublist">
							<? foreach($_service['child'] as $child) { ?>
								<li>
									<a href="<?=base_url($child['link']);?>" class="item"><?=$child['title'];?></a>
								</li>
							<? } ?>
							</ul>
						<? } ?>
					</li>
				<? } ?>
				</ul>
				
				<? if(isset($lmenu_news) and !empty($lmenu_news)) { ?>
					<div class="page-title mb25">Новостная лента</div>
					<ul class="left-news mb35">
					<? foreach($lmenu_news as $_new) { ?>
						<li>
							<a href="<?=base_url('news/'.$_new['alias']);?>">
								<div class="date"><?=date('d.m.Y', strtotime($_new['addDate']));?></div>
								<div class="title"><?=$_new['title'];?></div>
							</a>
						</li>
					<? } ?>
					</ul>
					<?=anchor('news', 'все новости', array('class' => 'text-black'));?>
				<? } ?>
			<? } else { ?>
				<? $this->load->view('site/pages/services-nav');?>
			<? } ?>
		</div>
	</div>
</div>