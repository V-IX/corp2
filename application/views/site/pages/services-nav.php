<div class="services-nav">
	<ul class="level-1">
	<? foreach($navs as $nav) { ?>
		<li class="<?=!empty($nav['child']) ? '_not_empty' : '';?> <?=($navs_current == $nav['idItem'] or $navs_parent == $nav['idItem']) ? '_open' : ''?>">
			<a href="<?=base_url('services/'.$nav['alias']);?>" class="<?=($navs_current == $nav['idItem'] or $navs_parent == $nav['idItem']) ? '_current' : ''?>"><?=$nav['title'];?></a>
			<? if(($navs_current == $nav['idItem'] or $navs_parent == $nav['idItem']) and !empty($nav['child'])) { ?>
				<ul class="level-2">
				<? foreach($nav['child'] as $child) { ?>
					<li><a href="<?=base_url('services/'.$child['alias']);?>" class="<?=$navs_current == $child['idItem'] ? '_current' : ''?>"><?=$child['title'];?></a></li>
				<? } ?>
				</ul>
			<? } ?>
		</li>
	<? } ?>
	</ul>
</div>