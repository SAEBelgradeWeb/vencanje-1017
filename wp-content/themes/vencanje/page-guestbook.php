<?php
/*
  *  Template Name: Guestbook Template
  */
?>

<?php get_header(); ?>

    <!-- BEFORE CONTENT -->
    <div id="outerbeforecontent">
        <div class="container">
            <div class="row">
                <div id="beforecontent" class="twelve columns">
                    <div id="pagetitle-container">
                        <h1 class="pagetitle">Guest Book</h1>
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

                        <div class="testimonial">
                            <div class="box-testi">
                                <div class="img">
                                    <div class="avatar circle">
                                        <img src="images/content/avatar2.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="text">
                                    <p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>

                                    <div class="author">
                                        <div class="user">John Doe</div>
                                        <div class="date">18 August 2013 @ 10:00am</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="separator"></div>

                        <div class="testimonial">
                            <div class="box-testi">
                                <div class="img">
                                    <div class="avatar circle">
                                        <img src="images/content/avatar3.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="text">
                                    <p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>

                                    <div class="author">
                                        <div class="user">John Doe</div>
                                        <div class="date">18 August 2013 @ 10:00am</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="separator"></div>

                        <div class="testimonial">
                            <div class="box-testi">
                                <div class="img ">
                                    <div class="avatar circle">
                                        <img src="images/content/avatar4.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="text">
                                    <p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>

                                    <div class="author">
                                        <div class="user">John Doe</div>
                                        <div class="date">18 August 2013 @ 10:00am</div>
                                    </div>
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