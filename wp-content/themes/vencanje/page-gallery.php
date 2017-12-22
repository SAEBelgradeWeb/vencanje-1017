<?php
/**
 * Template Name: Gallery Page Template
 */

get_header();
?>

<!-- BEFORE CONTENT -->
<div id="outerbeforecontent">
    <div class="container">
        <div class="row">
            <div id="beforecontent" class="twelve columns">
                <div id="pagetitle-container">
                    <h1 class="pagetitle">Our Gallery</h1>
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


                    <?php

                    $the_query = new WP_Query([
                        'post_type' => 'gallery',
                        'orderby' => 'date',
                        'order' => DESC
                    ]);

                    if ( $the_query->have_posts() ) {
                    while ( $the_query->have_posts() ) {
                    $the_query->the_post(); ?>


                    <article class="post">
                        <div class="date-wrapper">
                            <div class="line-date"></div>
                            <?php $datum = strtotime(get_the_date()); ?>
                            <div class="date-value"><?=date('d', $datum)?></div>
                            <div class="month-value"><?=date('F', $datum)?></div>
                        </div>

                        <div id="gallery" class="row">

                            <?php
                                $photos = get_field('photos');
                                if (isset($photos) && $photos !== false) :
                                    foreach ($photos as $row) : ?>
                                        <div class="one_fifth columns">
                                            <a class="image frame" href="<?=$row['image']['url']?>" data-rel="prettyPhoto[mixed]">
                                                <span class="rollover"></span>
                                                <span class="zoom"></span>
                                                <img alt="<?=$row['image']['alt']?>" src="<?=$row['image']['sizes']['thumbnail']?>" />
                                            </a>
                                        </div>
                            <?php
                                    endforeach;
                                endif;
                            ?>

                            <div class="clear"></div>
                            <div class="entry-content">
                                <h2 class="posttitle"><a href="<?=get_the_permalink()?>"><?=get_the_title()?></a></h2>
                                <p><?=get_first_x_words(get_the_content(), 60)?></p>
                            </div>
                        </div>

                        <div class="clear"></div>
                    </article>

                    <?php    }
                    } else {
                        echo 'NEMA NISTA';
                    }

                    /* Restore original Post Data */
                    wp_reset_postdata();
                    ?>

                    <div class="wp-pagenavi">
                        <div class="pages">Page 1 of 3</div><a class="page" href="#">1</a><span class="current"><span>2</span></span><a class="page" href="#">3</a>
                    </div>
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
