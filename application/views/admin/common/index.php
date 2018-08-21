<div class="row dashboard-stat-row">
	<div class="col-3">
		<div class="dashboard-stat success">
			<div class="icon"><?=fa('bullhorn');?></div>
			<div class="details">
				<div class="num"><?=$counter['news'];?></div>
				<div class="descr"><div class="text-overflow">новостей</div></div>
			</div>
			<a href="<?=base_url('admin/news/create');?>" class="link">
				Добавить новость
				<?=fa('plus-square-o');?>
			</a>
		</div>
	</div>
	<div class="col-3">
		<div class="dashboard-stat warning">
			<div class="icon"><?=fa('files-o');?></div>
			<div class="details">
				<div class="num"><?=$counter['articles'];?></div>
				<div class="descr"><div class="text-overflow">статей</div></div>
			</div>
			<a href="<?=base_url('admin/articles/create');?>" class="link">
				Добавить статью
				<?=fa('plus-square-o');?>
			</a>
		</div>
	</div>
	<div class="col-3">
		<div class="dashboard-stat info">
			<div class="icon"><?=fa('briefcase');?></div>
			<div class="details">
				<div class="num"><?=$counter['services'];?></div>
				<div class="descr"><div class="text-overflow">услуг</div></div>
			</div>
			<a href="<?=base_url('admin/services/create');?>" class="link">
				Добавить услугу
				<?=fa('plus-square-o');?>
			</a>
		</div>
	</div>
	<div class="col-3">
		<div class="dashboard-stat error">
			<div class="icon"><?=fa('cog');?></div>
			<div class="details">
				<div class="num"><?=$siteinfo['title']?></div>
				<div class="descr"><div class="text-overflow"><?=$siteinfo['descr']?></div></div>
			</div>
			<a href="<?=base_url('admin/settings/edit');?>" class="link">
				Изменить настройки
				<?=fa('plus-square-o');?>
			</a>
		</div>
	</div>
</div>
<hr class="mb25" />

<div class="row messages-row">
<? if(!empty($feedbacks)) { ?>
	<div class="col-6">
		<div class="panel">
			<div class="panel-head">
				<?=fa('envelope-o');?> Новые сообщения
			</div>
			<div class="panel-body">
				<ul class="messages">
				<? foreach($feedbacks as $feedback) { ?>
					<li>
						<a href="<?=base_url('admin/feedback/view/'.$feedback['idItem']);?>" class="message">
							<div class="clearfix">
								<div class="icon"><?=fa('envelope-o');?></div>
								<div class="text">
									<span class="bold"><?=$feedback['phone'];?></span>
									<? if($feedback['name'] != '') { ?><span class="text-gray">- <?=$feedback['name'];?></span><? } ?>
									<span class="text-gray">- <?=$feedback['title'];?></span>
								</div>
								<div class="date">
									<div><?=date('d.m.Y', strtotime($feedback['addDate']));?></div>
									<div><?=date('H:i:s', strtotime($feedback['addDate']));?></div>
								</div>
							</div>
						</a>
					</li>
				<? } ?>
				</ul>
				<div class="text-right mt15">
					<a href="<?=base_url('admin/feedback');?>">Перейти ко всем заказам</a>
				</div>
			</div>
		</div>
	</div>
<? } ?>
<? if(!empty($reviews)) { ?>
	<div class="col-6">
		<div class="panel">
			<div class="panel-head">
				<?=fa('comments-o');?> Новые отзывы
			</div>
			<div class="panel-body">
				<ul class="messages">
				<? foreach($reviews as $review) { ?>
					<li>
						<a href="<?=base_url('admin/reviews/view/'.$review['idItem']);?>" class="message">
							<div class="clearfix">
								<div class="icon"><?=fa('comment-o');?></div>
								<div class="text">
									<? if($review['phone'] != '') { ?><span class="bold"><?=$review['phone'];?> - </span><? } ?>
									<span class="text-gray"><?=$review['name'];?></span>
								</div>
								<div class="date">
									<div><?=date('d.m.Y', strtotime($review['addDate']));?></div>
									<div><?=date('H:i:s', strtotime($review['addDate']));?></div>
								</div>
							</div>
						</a>
					</li>
				<? } ?>
				</ul>
				<div class="text-right mt15">
					<a href="<?=base_url('admin/reviews');?>">Перейти ко всем отзывам</a>
				</div>
			</div>
		</div>
	</div>
<? } ?>
</div>
<hr class="mb25" />

<div class="row messages-row">
<? if(!empty($news)) { ?>
	<div class="col-6">
		<div class="panel">
			<div class="panel-head">
				<?=fa('bullhorn');?> Последние новости
			</div>
			<div class="panel-body">
				<ul class="publications">
				<? foreach($news as $new) { ?>
					<li>
						<div class="publication clearfix">
							<div class="img">
								<?=check_img('assets/uploads/news/thumb/'.$new['img']);?>
								<a href="<?=base_url('admin/news/edit/'.$new['idItem']);?>" class="block-edit">
									<span class="icon"><?=fa('pencil');?></span>
								</a>
							</div>
							<div class="descr">
								<a href="<?=base_url('admin/news/view/'.$new['idItem']);?>" class="title"><?=$new['title'];?></a>
								<div class="date text-gray"><?=translate_date($new['addDate']);?></div>
								<div class="brief"><?=$new['brief'];?></div>
							</div>
						</div>
					</li>
				<? } ?>	
				</ul>
				<div class="text-right mt15">
					<a href="<?=base_url('admin/news');?>">Новости компании</a>
				</div>
			</div>
		</div>
	</div>
<? } ?>
<? if(!empty($articles)) { ?>
	<div class="col-6">
		<div class="panel">
			<div class="panel-head">
				<?=fa('file-text-o');?> Полезная информация
			</div>
			<div class="panel-body">
				<ul class="publications">
				<? foreach($articles as $new) { ?>
					<li>
						<div class="publication clearfix">
							<div class="img">
								<?=check_img('assets/uploads/articles/thumb/'.$new['img']);?>
								<a href="<?=base_url('admin/articles/edit/'.$new['idItem']);?>" class="block-edit">
									<span class="icon"><?=fa('pencil');?></span>
								</a>
							</div>
							<div class="descr">
								<a href="<?=base_url('admin/articles/view/'.$new['idItem']);?>" class="title"><?=$new['title'];?></a>
								<div class="date text-gray"><?=translate_date($new['addDate']);?></div>
								<div class="brief"><?=$new['brief'];?></div>
							</div>
						</div>
					</li>
				<? } ?>	
				</ul>
				<div class="text-right mt15">
					<a href="<?=base_url('admin/articles');?>">Полезная информация</a>
				</div>
			</div>
		</div>
	</div>
<? } ?>
</div>
<? if(!empty($news_nv)) { ?>
<hr class="mb25" />

<div class="panel">
	<div class="panel-head">
		<i class="publications-nv-icon"></i> Блог Narisuemvse.by
	</div>
	<div class="panel-body">
		<ul class="publications-nv clearfix">
		<? foreach($news_nv as $new) { ?>
			<li>
				<a href="http://narisuemvse.by/news/<?=$new['alias'];?>" target="_blank" class="publication-nv clearfix">
					<div class="img">
						<img src="http://narisuemvse.by/assets/uploads/news/thumb/<?=$new['img'];?>" alt="Narisuemvse.by" />
					</div>
					<div class="descr">
						<div class="title"><?=$new['title'];?></div>
						<div class="date text-gray"><?=translate_date($new['addDate']);?></div>
						<div class="brief"><?=$new['brief'];?></div>
					</div>
				</a>
			</li>
		<? } ?>	
		</ul>
		<hr class="mt15" />
		<div class="text-right mt15">
			<a href="http://narisuemvse.by/news" target="_blank">Читать блог Narisuemvse.by</a>
		</div>
	</div>
</div>


<? } ?>