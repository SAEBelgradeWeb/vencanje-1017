<?php
/*
  *  Template Name: Contact Page Template
  */
?>

<?php
get_header();
the_post();
?>

<!-- BEFORE CONTENT -->
<div id="outerbeforecontent">
    <div class="container">
        <div class="row">
            <div id="beforecontent" class="twelve columns">
                <div id="pagetitle-container">
                    <h1 class="pagetitle"><?=get_the_title();?></h1>
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
                    <h2>Wedding Information</h2>
                    <img src="images/content/pic4.jpg" alt="" class="frame alignleft" />
                    <?=the_content()?>

                    <div class="separator"></div>

                    <div id="contactform">
                        <h2>Fill this form below</h2>
                        <form id="contact" action="#" />
                        <fieldset>
                            <span class="error" id="name_error">Please enter name !</span>
                            <span class="error" id="email_error">Please enter email address !</span>
                            <span class="error" id="email_error2">Please enter valid email address !</span>
                            <span class="error" id="msg_error">Please enter message !</span>
                            <label for="name" id="name_label">Your name <span class="required">(required)</span></label>

                            <input type="text" name="name" id="name" size="50" value="" class="text-input" />

                            <label for="email" id="email_label">Your email <span class="required">(required)</span></label>

                            <input type="text" name="email" id="email" size="50" value="" class="text-input" />

                            <label for="subject" id="subject_label">Subject</label>

                            <input type="text" name="subject" id="subject" size="50" value="" class="text-input" />

                            <label for="msg" id="msg_label">Message <span class="required">(required)</span></label>

                            <textarea rows="8" name="msg" id="msg" class="text-input"></textarea>

                            <br />
                            <input type="submit" name="submit" class="button" id="submit_btn" value="Send Message" />
                        </fieldset>
                        </form>
                    </div><!-- end contactform -->


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