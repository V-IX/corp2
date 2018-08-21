<?=script('assets/plugins/flexslider/jquery.flexslider-min.js');?>

   <div class="offer">
    <div class="offer-slider">
        <div class="wrapper">
            <div class="flexslider" id="offerSlider">
                <ul class="slides">
                <? foreach($slider as $slide) { ?>
                <? $tag_class = 'offer-slide text-'.$slide['num'];?>
				<? $tag_open = $slide['link'] != '' ? '<a href="'.base_url($slide['link']).'" class="'.$tag_class.'" >' : '<div class="'.$tag_class.'">'?>
				<? $tag_close = $slide['link'] != '' ? '</a>' : '</div>'?>
                       
                <?
                $slide_css = json_decode($slide['slide_css'], true);
                    $slide_style = '';
                    $slide_style .= 'width: '.$slide_css['width'].'px; ';
                    $slide_style .= 'left: '.$slide_css['left'].'px; ';
                    $slide_style .= 'top: '.$slide_css['top'].'px; ';
                    $slide_style .= 'color: #'.$slide_css['color'].'; ';
                $title_css = 
                    json_decode($slide['title_css'],  true);
                    $title_style = '';
                    $title_style .= 'font-size: '.$title_css['font-size'].'px; ';
                    $title_style .= 'font-weight: '.$title_css['font-weight'].'; ';
                    $title_style .= 'font-style: '.$title_css['font-style'].'; ';
                    $title_style .= 'text-transform: '.$title_css['text-transform'].'; ';
                $text_css = json_decode($slide['text_css'], true);
                    $text_style = '';
                    $text_style .= 'font-size: '.$text_css['font-size'].'px; ';
                    $text_style .= 'font-weight: '.$text_css['font-weight'].'; ';
                    $text_style .= 'font-style: '.$text_css['font-style'].'; ';
                    $text_style .= 'text-transform: '.$text_css['text-transform'].'; ';
                ?>                       
                        <li>
                        <?=$tag_open;?>
                            <div class="img" style="background-image: url('')">
                                <img src="<?=base_url('assets/uploads/slider/'.$slide['img']);?>" alt="<?=htmlspecialchars($slide['title']);?>">
                            </div>
                            <? if ($slide['showText']){ ?>
                                <div class="in" style="<?=$slide_style;?>">
                                    <div class="title" style="<?=$title_style;?>">
                                        <?=$slide['title'];?>
                                    </div>
                                    <? if($slide['text']){ ?>
                                    <div class="text" style="<?=$text_style;?>">
                                        <?=nl2br($slide['text']);?>
                                    </div>
                                    <? } ?>
                                    <? if($slide['showBtn']){ ?>
                                     <div class="sbtn">
                                        <span class="btn_a"><?=$slide['btnText'];?>
                                        <i class="fa fa-arrow-right"></i>
                                        </span>
                                    </div>
                                    <? } ?>
                                </div>
                            <? } ?>
                        <?=$tag_close;?>
                        </li>
                <? } ?>
                </ul>
            </div>
        </div>
    </div>
    <div class="offer-btns" id="offerSliderBtns">
        <a href="javascript:void(0)" class="flex-prev">
            <?=fa('angle-left');?>
        </a>
        <a href="javascript:void(0)" class="flex-next">
            <?=fa('angle-right');?>
        </a>
    </div>
</div>
    <script>
        /* offerSlider */
        $(window).load(function() {
            $('#offerSlider').flexslider({
                animation: "slide",
                controlNav: false,
                customDirectionNav: $("#offerSliderBtns a")
            });
        });

    </script>