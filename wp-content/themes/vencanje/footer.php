<!-- FOOTER -->
<footer id="footer">

    <!-- FOOTER SIDEBAR -->
    <div id="outerfootersidebar">
        <div class="container">
            <div id="footersidebar" class="row">

                <div id="footcol1" class="four columns">
                    <ul>
                        <li class="widget-container">
                            <h2 class="widget-title">Get in touch</h2>
                            <?=get_field('contact_information', 'option')?>
                            <?php
                                $socialLinks = get_field('social_links', 'option');
                                if (!empty($socialLinks)) : ?>
                                <ul class="sn">
                                    <?php foreach ($socialLinks as $item) : ?>
                                        <li>
                                            <a href="<?=$item['link']?>" title="<?=$item['title']?>">
                                                <span class="icon-img <?=$item['icon']?>"></span>
                                            </a>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            <?php endif; ?>
                        </li>
                    </ul>
                </div>
                <div id="footcol2" class="four columns">
                    <ul>
                        <li class="widget-container">
                            <h2 class="widget-title">Latest Posts</h2>

            <?php
                $the_query = new WP_Query([
                    'post_type' => 'post',
                    'orderby' => 'date',
                    'cat' => get_field('latest_posts_category', 'option'),
                    'order' => DESC,
                    'posts_per_page' => 2
                ]);

            if ( $the_query->have_posts() ) : ?>
            <ul class="rp-widget">
                <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                    <li>
                        <?php $slika = get_field('hero_image');?>
                        <img alt="" src="<?=$slika['sizes']['thumbnail-mini']?>" />
                        <h3><a href="<?=get_permalink()?>"><?=get_the_title()?></a></h3>
                        <span class="smalldate"><?=get_the_date()?></span>
                        <p><?=get_first_x_words(get_the_content(), 12)?></p>
                        <span class="clear"></span>
                    </li>
                <?php endwhile; ?>
            </ul>
            <?php endif; ?>
        </li>
    </ul>
                </div>
                <div id="footcol3" class="four columns">
                    <ul>
                        <li class="widget-container">
                            <h2 class="widget-title">About Us</h2>
                            <p><?=get_field('about_us', 'option')?></p>
                        </li>
                    </ul>
                </div>
                <div class="clear"></div>

            </div>
        </div>
    </div>
    <!-- END FOOTER SIDEBAR -->

</footer>
<!-- END FOOTER -->
<div class="clear"></div><!-- clear float -->
</div><!-- end outercontainer -->
</div><!-- end bodychild -->

<!-- COPYRIGHT -->
<div id="outercopyright">
    <div class="container">
        <div id="copyright">
            Copyright © 2013 Michael&amp;Miranda. Designed by <a href="http://templatesquare.com">TemplateSquare.com</a>.
        </div>
    </div>
</div>
<!-- END COPYRIGHT -->

    <?php wp_footer(); ?>

    <script type="text/javascript">
        jQuery(window).load(function() {
            jQuery('.flexslider').flexslider({
                animation: "fade",              //String: Select your animation type, "fade" or "slide"
                directionNav: true, //Boolean: Create navigation for previous/next navigation? (true/false)
                controlNav: false  //Boolean: Create navigation for paging control of each clide? Note: Leave true for manualControls usage
            });

        });
    </script>

</body>
</html>
