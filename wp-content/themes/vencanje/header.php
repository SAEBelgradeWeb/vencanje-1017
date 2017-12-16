<!DOCTYPE html>

<html <?php language_attributes(); ?>>
<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="<?php bloginfo('charset') ?>"/>
    <meta name="robots" content="index, follow"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <!-- CSS
  ================================================== -->
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700' rel='stylesheet' type='text/css'/>

    <!-- Favicons
    ================================================== -->
    <link rel="shortcut icon" href="<?= get_template_directory_uri() ?>/images/favicon.ico"/>

    <!-- ovde wo ubacuje sve svoje u head -->
    <?php wp_head() ?>
</head>
<body>

<div id="bodychild">

    <div id="outercontainer">

        <!-- HEADER -->
        <div id="outerheader">
            <div class="shadow-l"></div>
            <div class="shadow-r"></div>
            <div class="container">

                <header id="top">
                    <div class="row">
                        <div id="logo" class="twelve columns">
                            <span class="desc"><?php bloginfo('description') ?></span>

                            <?php $logo = get_field('logo', 'option'); ?>
                            <?php if (isset($logo)) : ?>
                                <a href="index.html">
                                    <img src="<?=$logo['url']?>" alt="<?=$logo['alt']?>"/>
                                </a>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="row">
                        <section id="navigation" class="twelve columns">

                            <?php wp_nav_menu([
                                'theme_location' => 'header-menu',
                                'container' => 'nav',
                                'container_id' => 'nav-wrap',
                                'menu_id' => 'topnav',
                                'menu_class' => 'sf-menu'
                            ]) ?>



                        </section>
                    </div>
                    <div class="clear"></div>
                </header>

            </div>
        </div>
        <!-- END HEADER -->