<div class="content">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<div class="page-top">
			<h1 class="page-title"><?=isset($item['title']) ? $item['title'] : $pageinfo['title'];?></h1>
			<? if(!isset($item) and $pageinfo['brief'] != '') { ?><div class="page-descr"><?=$pageinfo['brief'];?></div><? } ?>
		</div>
		<div class="page-content">
		<? if($view) $this->load->view('site/'.$view); ?>
		</div>
		<? if(!isset($item) and $pageinfo['text'] != '') { ?><div class="text-editor mt40"><?=$pageinfo['text'];?></div><? } ?>
	</div>
</div>