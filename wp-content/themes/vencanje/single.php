<?php get_header(); ?>
<?php

while ( have_posts() ) : the_post();
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

            <section id="maincontent" class="nine columns positionleft">

                <section class="content">

                    <article class="post">
                        <div class="date-wrapper">
                            <div class="line-date"></div>
                            <div class="date-value">15</div>
                            <div class="month-value">August</div>
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

                    <section id="comment">
                        <h3>4 Comments</h3>
                        <ol class="commentlist">
                            <li>
                                <div class="comment-body">
                                    <div class="comment-arrow"></div>
                                    <div class="avatar-img circle"><img src="images/content/avatar.jpg" alt="" /></div>
                                    <cite class="fn">Richard Delano</cite>
                                    <span class="tdate"> - August 17, 2012 7:15 am</span> &nbsp;/&nbsp; <span class="reply"><a href="#">Reply</a></span>
                                    <div class="commenttext">
                                        <p>Nulla lobortis facilisis eros vitae mollis. Morbi consectetur, tortor ut feugiat rhoncus, nunc augue placerat massa, sit amet laoreet est libero quis nisl. Integer cursus sodales sem eu dapibus. Morbi lobortis eleifend lectus sit amet porttitor. Nam tincidunt congue laoreet.</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment-body">
                                    <div class="comment-arrow"></div>
                                    <div class="avatar-img circle"><img src="images/content/avatar.jpg" alt="" /></div>
                                    <cite class="fn"><a href="#">Michael John</a></cite>
                                    <span class="tdate"> -  August 17, 2012 7:15 am</span> &nbsp;/&nbsp; <span class="reply"><a href="#">Reply</a></span>
                                    <div class="commenttext">
                                        <p>Nulla lobortis facilisis eros vitae mollis. Morbi consectetur, tortor ut feugiat rhoncus, nunc augue placerat massa, sit amet laoreet est libero quis nisl. Integer cursus sodales sem eu dapibus. Morbi lobortis eleifend lectus sit amet porttitor. Nam tincidunt congue laoreet.</p>
                                    </div>
                                </div>
                                <ol>
                                </ol></li><li>
                                <div class="comment-body">
                                    <div class="comment-arrow"></div>
                                    <div class="avatar-img circle"><img src="images/content/avatar.jpg" alt="" /></div>
                                    <cite class="fn"><a href="#">Wayne Rooney</a></cite>
                                    <span class="tdate"> -  August 17, 2012 7:15 am</span> &nbsp;/&nbsp; <span class="reply"><a href="#">Reply</a></span>
                                    <div class="commenttext">
                                        <p>Nulla lobortis facilisis eros vitae mollis. Morbi consectetur, tortor ut feugiat rhoncus, nunc augue placerat massa, sit amet laoreet est libero quis nisl. Integer cursus sodales sem eu dapibus. Morbi lobortis eleifend lectus sit amet porttitor. Nam tincidunt congue laoreet.</p>
                                    </div>
                                </div>
                            </li>


                            <li>
                                <div class="comment-body">
                                    <div class="comment-arrow"></div>
                                    <div class="avatar-img circle"><img src="images/content/avatar.jpg" alt="" /></div>
                                    <cite class="fn"><a href="#">John Doe</a></cite>
                                    <span class="tdate"> -  August 17, 2012 7:15 am</span> &nbsp;/&nbsp; <span class="reply"><a href="#">Reply</a></span>
                                    <div class="commenttext">
                                        <p>Nulla lobortis facilisis eros vitae mollis. Morbi consectetur, tortor ut feugiat rhoncus, nunc augue placerat massa, sit amet laoreet est libero quis nisl. Integer cursus sodales sem eu dapibus. Morbi lobortis eleifend lectus sit amet porttitor. Nam tincidunt congue laoreet.</p>
                                    </div>
                                </div>
                            </li>

                        </ol></section>

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
    <?php
    endwhile;
    ?>
<?php get_footer(); ?>