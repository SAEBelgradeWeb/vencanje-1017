<?php
/**
 * Template Name: Wedding Page Template
 */

get_header();
?>


<!-- BEFORE CONTENT -->
<div id="outerbeforecontent">
    <div class="container">
        <div class="row">
            <div id="beforecontent" class="twelve columns">
                <div id="pagetitle-container">
                    <h1 class="pagetitle">Our Wedding</h1>
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
                    <h2>Our Story</h2>
                    <p>Nunc lacinia, lectus sed posuere laoreet, dui velit varius enim, id feugiat risus lacus posuere purus. Quisque vitae risus enim. Quisque in massa sodales, bibendum felis sed, egestas quam. Aliquam magna leo, venenatis quis sapien eget, feugiat aliquam leo. Vivamus tellus justo, dapibus ac lectus non, pharetra molestie massa. Praesent ac justo quis nunc tempor tincidunt. Integer molestie malesuada nunc ut porta. Nullam ornare viverra nisi, ut sollicitudin urna dapibus nec.</p>
                    <div class="textCenter margin_bottom_large">
                        <img alt="" src="images/content/pic1.jpg" class="frame margin_right" /><img alt="" src="images/content/pic2.jpg" class="frame" />
                    </div>
                    <p>Cras lectus arcu, luctus pulvinar porta nec, sodales nec elit. Mauris convallis vitae nunc eu faucibus. Duis tempor interdum lacus ac varius. Cras sagittis nisl non orci dictum molestie. Aenean commodo, sem sit amet condimentum dictum, est leo euismod ipsum, in rutrum lectus lacus non massa. Fusce ornare hendrerit nibh sit amet dignissim. Curabitur sagittis bibendum nibh. Vestibulum nec rhoncus metus. Morbi sodales lobortis tellus quis luctus. Mauris ut venenatis orci, ut consectetur augue.</p>
                    <blockquote>"Love looks not with the eyes, but with the mind"</blockquote>
                    <p>Sed vulputate, sem nec lobortis pharetra, ante eros bibendum leo, dictum consectetur metus mauris et lectus. Fusce ultrices non purus vel hendrerit. Proin tincidunt consequat justo id malesuada.</p>
                    <div class="separator"></div>
                    <div class="row story">
                        <div class="one_half columns">
                            <img alt="" src="images/icons/icon1.png" class="circle alignleft" />
                            <div class="indentleft">
                                <h3>The first time we met</h3>
                                <p>Sed vulputate, sem nec lobortis pharetra, ante eros bibendum leo, dictum consectetur metus mauris et lectus.</p>
                            </div>
                        </div>
                        <div class="one_half columns">
                            <img alt="" src="images/icons/icon2.png" class="circle alignleft" />
                            <div class="indentleft">
                                <h3>Our first date</h3>
                                <p>Sed vulputate, sem nec lobortis pharetra, ante eros bibendum leo, dictum consectetur metus mauris et lectus.</p>
                            </div>
                        </div>
                        <div class="one_half columns">
                            <img alt="" src="images/icons/icon3.png" class="circle alignleft" />
                            <div class="indentleft">
                                <h3>Marriage proposal</h3>
                                <p>Sed vulputate, sem nec lobortis pharetra, ante eros bibendum leo, dictum consectetur metus mauris et lectus.</p>
                            </div>
                        </div>
                        <div class="one_half columns">
                            <img alt="" src="images/icons/icon4.png" class="circle alignleft" />
                            <div class="indentleft">
                                <h3>Save the date</h3>
                                <p>Sed vulputate, sem nec lobortis pharetra, ante eros bibendum leo, dictum consectetur metus mauris et lectus.</p>
                            </div>
                        </div>
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
