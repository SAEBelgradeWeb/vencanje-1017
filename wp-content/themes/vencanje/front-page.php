
<?php get_header(); ?>

<!-- SLIDER -->
<div id="outerslider">
    <div class="container">
        <div class="row">
            <div id="slidercontainer" class="twelve columns">

                <section id="slider">
                    <div id="slideritems" class="flexslider">
                        <ul class="slides">
                            <?php
                            // WP_Query arguments
                            $args = [
                                'post_type' => 'slider',
                                'order_by' => 'id',
                                'order' => 'asc',
                                'tax_query' => [
                                    [
                                        'taxonomy' => 'slider-categories',
                                        'field' => 'slug',
                                        'terms' => 'drugi-slajder',
                                    ]
                                ],
                            ];

                            // The Query
                            $query = new WP_Query( $args );

                            // The Loop
                            if ( $query->have_posts() ) :
                                while ( $query->have_posts() ):
                                    $query->the_post();
                                    ?>
                                    <li>
                                        <?php   the_post_thumbnail('slider-velicina') ?>
                                        <div class="flex-caption">
                                            <h1><?php the_title() ?></h1>
                                            <p><?php

                                            get_first_x_words(get_the_excerpt(), 3);

                                                ?></p>
                                        </div>
                                    </li>

                                <?php
                                endwhile;
                            endif;

                            // Restore original Post Data
                            wp_reset_postdata();

                            ?>

                        </ul>
                        <img src="<?=get_template_directory_uri()?>/images/slider-shadow.png" alt="" />
                    </div>
                </section>

            </div>
        </div>
    </div>
</div>
<!-- END SLIDER -->


<!-- MAIN CONTENT -->
<div id="outermain">
    <div class="container">
        <div class="row">
            <section id="maincontent" class="twelve columns">

                <section class="content">

                    <div class="highlight-content">
                        <h1> We're getting married August 18, 2013</h1>
                    </div>


                    <div id="featured" class="row">
                        <?php dynamic_sidebar('home-page') ?>


                    </div>


                    <div class="separator"></div>

                    <div class="row">
                        <?php
                        $query = new WP_Query([
                                'post_type' => 'about_post_type',
                                'order_by' => 'ID',
                                'order' => 'asc'
                        ]);

                        if($query->have_posts()):
                            while($query->have_posts()):
                                $query->the_post();
                                ?>
                                <div class="one_half columns">
                                    <div class="frame10 circle">
                                        <?php the_post_thumbnail('about-us') ?>
                                    </div>
                                    <div class="indentleft">
                                        <h3 class="title"><?php the_title() ?></h3>
                                        <div>
                                        <?= get_first_x_words(get_the_excerpt(), 25); ?>
                                        </div>
                                        <a href="<?php the_permalink() ?>" class="button"><?php the_field('button') ?> <span></span></a>
                                    </div>
                                </div>
                                <?php
                            endwhile;
                        endif;
                        wp_reset_postdata();

                        ?>


                    </div>


                </section>

            </section>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT -->

<?php get_footer(); ?>
