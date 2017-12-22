<?php get_header();
the_post();
?>
    <!-- BEFORE CONTENT -->
    <div id="outerbeforecontent">
        <div class="container">
            <div class="row">
                <div id="beforecontent" class="twelve columns">
                    <div id="pagetitle-container">
                        <h1 class="pagetitle"><?php the_title() ?></h1>
                        <span class="pagedesc">Posted by <?php the_author(); ?></span>
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

                <section id="maincontent" class="twelve columns positionleft">

                    <section class="content">

                        <?php
                        $photos = get_field('photos');
                        if (isset($photos)) : ?>
                            <div id="links">
                                <?php foreach ($photos as $row) : ?>
                                    <a href="<?=$row['image']['url']?>" title="<?=$row['image']['title']?>">
                                        <img src="<?=$row['image']['sizes']['thumbnail']?>" alt="<?=$row['image']['alt']?>">
                                    </a>
                                <?php endforeach;?>
                            </div>
                        <?php endif; ?>





                        <!-- The Gallery as lightbox dialog, should be a child element of the document body -->
                        <div id="blueimp-gallery" class="blueimp-gallery">
                            <div class="slides"></div>
                            <h3 class="title"></h3>
                            <a class="prev">‹</a>
                            <a class="next">›</a>
                            <a class="close">×</a>
                            <a class="play-pause"></a>
                            <ol class="indicator"></ol>
                        </div>

                        <script>
                            (function($) {
                                $(document).ready(function() {
                                    document.getElementById('links').onclick = function (event) {
                                        event = event || window.event;
                                        var target = event.target || event.srcElement,
                                            link = target.src ? target.parentNode : target,
                                            options = {index: link, event: event},
                                            links = this.getElementsByTagName('a');
                                        blueimp.Gallery(links, options);
                                    };
                                });
                            })(jQuery);
                        </script>

                        <article class="post">
                            <div class="date-wrapper">
                                <div class="line-date"></div>
                                <?php $datum = strtotime(get_the_date()); ?>
                                <div class="date-value"><?=date('d', $datum)?></div>
                                <div class="month-value"><?=date('F', $datum)?></div>
                            </div>

                            <div class="entry-content">
                                <?php the_content(); ?>
                            </div>

                            <div class="clear"></div>
                        </article>

                        <h3>About Author</h3>
                        <div class="author">
                            <div class="avatar circle"><img alt="" src="images/content/author.jpg" /></div>
                            <cite class="fn">Miranda</cite>
                            <p>Cras vitae magna eget velit varius consectetur rhoncus eget dolor. Nulla eros libero, elementum a neque sed, rutrum vestibulum risus. Cras dapibus enim id est placerat, ut malesuada turpis vulputate.</p>
                        </div>

                    </section>

                </section>

            </div>
        </div>
    </div>
    <!-- END MAIN CONTENT -->
<?php get_footer(); ?>