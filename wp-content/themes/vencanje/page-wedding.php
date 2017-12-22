<?php
/**
 * Template Name: Wedding Page Template
 */

get_header();
the_post();
?>


<!-- BEFORE CONTENT -->
<div id="outerbeforecontent">
    <div class="container">
        <div class="row">
            <div id="beforecontent" class="twelve columns">
                <div id="pagetitle-container">
                    <h1 class="pagetitle"><?=get_the_title()?></h1>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END BEFORE CONTENT -->


<!-- MAIN CONTENT -->
<div id="outermain">
    <div class="container">
        <div class="row">

            <section id="maincontent" class="nine columns positionleft">

                <section class="content">
                    <?php the_content();?>
                    <div class="separator"></div>

                    <?php $snippets = get_field('snippets'); ?>
                    <?php if (isset($snippets) && $snippets !== false) : ?>
                        <div class="row story">
                            <?php foreach($snippets as $snippet) : ?>
                                <div class="one_half columns">
                                    <img alt="" src="<?=$snippet['icon']['sizes']['thumbnail-mini']?>" class="circle alignleft" />
                                    <div class="indentleft">
                                        <h3><?=$snippet['headline']?></h3>
                                        <p><?=$snippet['paragraph']?></p>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    <?php endif; ?>


                </section>

            </section>

            <aside class="three columns">
                <div class="sidebar">
                    <ul>
                        <li class="widget-container">
                            <h2 class="widget-title">Search</h2>
                            <form action="#" id="searchform" method="get" />
                            <div class="bgsearch">
                                <input type="text" value="" id="s" name="s" />
                                <input type="submit" value="" class="searchbutton" />
                            </div>
                            </form>
                            <div class="clear"></div>
                        </li>
                        <li class="widget-container">
                            <h2 class="widget-title">Categories</h2>
                            <ul>
                                <li><a href="#">Wedding Ceremony</a></li>
                                <li><a href="#">Our Blog</a></li>
                                <li><a href="#">Marriage Bliss</a></li>
                                <li><a href="#">Guests Reservation</a></li>
                            </ul>
                        </li>
                        <li class="widget-container">
                            <h2 class="widget-title">Recent Post</h2>
                            <ul class="rp-widget">
                                <li>
                                    <img src="images/content/small-img1.jpg" alt="" />
                                    <h3><a href="#">This is about our wedding event</a></h3>
                                    <span class="smalldate">April 27, 2012</span>
                                    <span class="clear"></span>
                                </li>
                                <li class="last">
                                    <img src="images/content/small-img2.jpg" alt="" />
                                    <h3><a href="#">We are getting married part II</a></h3>
                                    <span class="smalldate">April 22, 2012</span>
                                    <span class="clear"></span>
                                </li>
                            </ul>
                        </li>
                        <li class="widget-container">
                            <h2 class="widget-title">Archives</h2>
                            <ul>
                                <li><a href="#">August 2013</a></li>
                                <li><a href="#">June 2013</a></li>
                                <li><a href="#">May 2013</a></li>
                                <li><a href="#">February 2013</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </aside>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT -->


<?php get_footer(); ?>
