<%--
  Created by IntelliJ IDEA.
  User: doche
  Date: 6/9/2017
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <!-- BASICS -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Cameron's Portfolio Esque Example</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/isotope.css" media="screen" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <!-- skin -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/skin/default.css">
    <!-- =======================================================
        Theme Name: Amoeba
        Theme URL: https://bootstrapmade.com/free-one-page-bootstrap-template-amoeba/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
    <!-- My additional styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/camsPageStyleAdditions.css">
</head>
<body>
<section id="header" class="appear"></section>
<div class="navbar navbar-fixed-top" role="navigation"
     data-0="line-height:100px; height:100px; background-color:rgba(0,0,0,0.3);"
     data-300="line-height:60px; height:60px; background-color:rgba(0,0,0,1);">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="fa fa-bars color-white"></span>
            </button>
            <h1><a class="navbar-brand" href="index.jsp" data-0="line-height:90px;" data-300="line-height:50px;">			Cam Docherty
            </a></h1>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav" data-0="margin-top:20px;" data-300="margin-top:5px;">
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="#section-about">About</a></li>
                <li><a href="#section-works">Portfolio</a></li>
                <li><a href="#section-contact">Contact</a></li>
            </ul>
        </div><!--/.navbar-collapse -->
    </div>
</div>

<section class="featured">
    <div class="container">
        <div class="row mar-bot40">
            <div class="col-md-6 col-md-offset-3">

                <div class="align-center">
                    <i class="fa fa-flask fa-5x mar-bot20"></i>
                    <h2 class="slogan">Welcome Kors Team</h2>
                    <p>
                        In an effort to display the skills you're looking for, I
                        built a java web application. I hope to address most, if
                        not all, of your list of requirements.

                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- services -->
<section id="section-services" class="section pad-bot30 bg-white">
    <div class="container">

        <div class="row mar-bot40">
            <div class="col-lg-4" >
                <div class="align-center">
                    <i class="fa fa-code fa-5x mar-bot20"></i>
                    <h4 class="text-bold">Strong in Frontend</h4>
                    <p>I'm well versed when it comes to using CSS/HTML, tailoring
                        templates, producing user experience, and
                        giving applications functionality.
                    </p>
                </div>
            </div>

            <div class="col-lg-4" >
                <div class="align-center">
                    <i class="fa fa-terminal fa-5x mar-bot20"></i>
                    <h4 class="text-bold">Solid in Backend/Server-side</h4>
                    <p>
                        I chose to make this web application java based to display my
                        ability to interact between the MVC layers, and provide more capabilities.
                    </p>
                </div>
            </div>

            <div class="col-lg-4" >
                <div class="align-center">
                    <!-- Old font-awesome version didn't have a database icon.
                     === Work-around for conflicts (see camsPageStyleAdditions)
                     ========================================================== -->
                    <i class="icon icon-database icon-5x mar-bot20"></i>


                    <h4 class="text-bold">Capable in Database Design</h4>
                    <p>For this project I chose to use SQLite. First, an AJAX request is
                        made to a servlet, I get a JDBC connection, model the data,
                        and finally present it to the end user.
                    </p>
                </div>
            </div>

        </div>

    </div>
</section>

<!-- spacer section:testimonial -->
<section id="testimonials" class="section" data-stellar-background-ratio="0.5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="align-center">
                    <div class="testimonial pad-top40 pad-bot40 clearfix">
                        <h5>
                            I'd make a great addition to any development team. In addition to learning quickly
                            and adding value to my employer, I work well with others, and add to team cohesion.
                            Download my resume and site specific information:
                        </h5>
                        <br/>
                        <span class="author">&mdash; Cam's Resume: <a href="#section-works" id="refLink">Get Resume</a></span>
                    </div>

                </div>
            </div>

        </div>
    </div>
</section>

<!-- about -->
<section id="section-about" class="section appear clearfix">
    <div class="container">

        <div class="row mar-bot40">
            <div class="col-md-offset-3 col-md-6">
                <div class="section-header">
                    <h2 class="section-heading animated" data-animation="bounceInUp">A Bit About Myself</h2>
                    <p>
                        I'm an ambitious guy with a craving for knowledge. I Often find coding to be
                        the easy part, but knowing when to go to bed is a different story. Here's me at a glance:
                    </p>
                </div>
            </div>
        </div>

        <div class="row align-center mar-bot40">
            <div class="col-md-3">
                <div class="team-member">
                    <figure class="member-photo">
                        <img src="${pageContext.request.contextPath}/assets/img/aboutMePhotos/OU_Dark.jpg" alt="" />
                    </figure>
                    <div class="team-detail">
                        <h4>Pursuing my Bachelor's</h4>
                        <span>Computer Science: Oakland University</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="team-member">
                    <figure class="member-photo">
                        <img src="${pageContext.request.contextPath}/assets/img/aboutMePhotos/OCC_TextRight.jpg" alt="" />
                    </figure>
                    <div class="team-detail">
                        <h4>Associates Degree</h4>
                        <span>Software Engineering: Oakland Community College</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="team-member">
                    <figure class="member-photo">
                        <img src="${pageContext.request.contextPath}/assets/img/aboutMePhotos/Army_Bazooka.jpg" alt="" />
                    </figure>
                    <div class="team-detail">
                        <h4>Army Veteran</h4>
                        <span>Honorably Discharged: Michigan Army National Guard</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="team-member">
                    <figure class="member-photo">
                        <img src="${pageContext.request.contextPath}/assets/img/aboutMePhotos/briefcase_icon.jpg" alt="" />
                    </figure>
                    <div class="team-detail">
                        <h4>Professional Experience</h4>
                        <span>
              Well versed in electrical assembly. Produced a static
              site for a small business.
            </span>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- /about -->

<!-- spacer section:stats -->
<section id="parallax1" class="section pad-top40 pad-bot40" data-stellar-background-ratio="0.5">
    <div class="container">
        <div class="align-center pad-top40 pad-bot40">
            <blockquote class="bigquote color-white">Hard Work - Dedication - Perseverance</blockquote>
            <p class="color-white"><strong>Qualities I strive for</strong></p>
        </div>
    </div>
</section>

<!-- section works -->
<section id="section-works" class="section appear clearfix">
    <div class="container">

        <div class="row mar-bot40">
            <div class="col-md-offset-3 col-md-6">
                <div class="section-header">
                    <h2 class="section-heading animated" data-animation="bounceInUp">Portfolio</h2>
                    <p>Some of my projects and other relevant information.</p>
                </div>
            </div>
        </div>

        <div class="row">
            <nav id="filter" class="col-md-12 text-center">
                <ul>
                    <li><a href="#" class="current btn-theme btn-small" data-filter="*">All</a></li>
                    <li><a href="#" class="btn-theme btn-small" data-filter=".webdesign" >Electrical</a></li>
                    <li><a href="#" class="btn-theme btn-small" data-filter=".photography">Visualization</a></li>
                    <li><a href="#" class="btn-theme btn-small" data-filter=".print" id="refFilter">Pertinents</a></li>
                </ul>
            </nav>
            <div class="col-md-12">
                <div class="row">
                    <div class="portfolio-items isotopeWrapper clearfix" id="3">

                        <article class="col-md-4 isotopeItem webdesign">
                            <div class="portfolio-item">
                                <img src="${pageContext.request.contextPath}/assets/img/portfolio/img1.jpg" alt="" />
                                <div class="portfolio-desc align-center">
                                    <div class="folio-info">
                                        <h5><a>Micro Controller</a></h5>
                                        <a href="${pageContext.request.contextPath}/assets/img/portfolio/img1.jpg" class="fancybox">
                                            <i class="fa fa-plus fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="col-md-4 isotopeItem photography">
                            <div class="portfolio-item">
                                <img src="${pageContext.request.contextPath}/assets/img/portfolio/img2.jpg" alt="" />
                                <div class="portfolio-desc align-center">
                                    <div class="folio-info">
                                        <h5><a>Database -> Graph</a></h5>
                                        <a href="${pageContext.request.contextPath}/assets/img/portfolio/img2.jpg" class="fancybox">
                                            <i class="fa fa-plus fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </article>


                        <article class="col-md-4 isotopeItem photography">
                            <div class="portfolio-item">
                                <img src="${pageContext.request.contextPath}/assets/img/portfolio/img3.jpg" alt="" />
                                <div class="portfolio-desc align-center">
                                    <div class="folio-info">
                                        <h5><a>Professional Experience<br>Static Site Example</a></h5>
                                        <a href="${pageContext.request.contextPath}/assets/img/portfolio/img3.jpg"
                                           data-title-id="open_site" class="fancybox">
                                            <i class="fa fa-plus fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="col-md-4 isotopeItem print">
                            <div class="portfolio-item">
                                <img src="${pageContext.request.contextPath}/assets/img/portfolio/img4.jpg" alt="" />
                                <div class="portfolio-desc align-center">
                                    <div class="folio-info">
                                        <h5><a>Get Unit Test</a></h5>
                                        <a href="${pageContext.request.contextPath}/assets/img/portfolio/img4.jpg" class="fancybox">
                                            <i class="fa fa-plus fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="col-md-4 isotopeItem photography">
                            <div class="portfolio-item">
                                <img src="${pageContext.request.contextPath}/assets/img/portfolio/img5.jpg" alt="" />
                                <div class="portfolio-desc align-center">
                                    <div class="folio-info">
                                        <h5><a>Customized Content Management</a></h5>
                                        <a href="${pageContext.request.contextPath}/assets/img/portfolio/img5.jpg"
                                           data-title-id="get_documentation" class="fancybox">
                                            <i class="fa fa-plus fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="col-md-4 isotopeItem webdesign">
                            <div class="portfolio-item">
                                <img src="${pageContext.request.contextPath}/assets/img/portfolio/img6.jpg" alt="" />
                                <div class="portfolio-desc align-center">
                                    <div class="folio-info">
                                        <h5><a>Electrical Assembly</a></h5>
                                        <a href="${pageContext.request.contextPath}/assets/img/portfolio/img6.jpg"
                                           rel="assemblyGallery" data-title-id="electric_gallery_images" class="fancybox">
                                            <i class="fa fa-plus fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="col-md-4 isotopeItem print">
                            <div class="portfolio-item">
                                <img src="${pageContext.request.contextPath}/assets/img/portfolio/img7.jpg" alt="" />
                                <div class="portfolio-desc align-center">
                                    <div class="folio-info">
                                        <h5><a>Get Documentation</a></h5>
                                        <a href="${pageContext.request.contextPath}/assets/img/portfolio/img7.jpg" class="fancybox">
                                            <i class="fa fa-plus fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="col-md-4 isotopeItem photography">
                            <div class="portfolio-item">
                                <img src="${pageContext.request.contextPath}/assets/img/portfolio/img8.jpg" alt="" />
                                <div class="portfolio-desc align-center">
                                    <div class="folio-info">
                                        <h5><a>Some Technologies I'm Familiar With</a></h5>
                                        <a href="${pageContext.request.contextPath}/assets/img/portfolio/img8.jpg"
                                           rel="familiarGallery" data-title-id="familiar_gallery" class="fancybox">
                                            <i class="fa fa-plus fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="col-md-4 isotopeItem print">
                            <div class="portfolio-item">
                                <img src="${pageContext.request.contextPath}/assets/img/portfolio/img9.jpg" alt="" />
                                <div class="portfolio-desc align-center">
                                    <div class="folio-info">
                                        <h5><a>Get Resume</a></h5>
                                        <a href="${pageContext.request.contextPath}/assets/img/portfolio/img9.jpg"
                                           data-title-id="get_resume" class="fancybox">
                                            <i class="fa fa-plus fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </article>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ./End portfolio selector section -->

<section id="parallax2" class="section parallax" data-stellar-background-ratio="0.5">
    <div class="align-center pad-top40 pad-bot40">
        <blockquote class="bigquote color-custom">Developer: an organism that turns coffee into code.</blockquote>
        <p class="color-custom"><strong>-Unknown</strong></p>
    </div>
</section>

<!-- contact -->
<section id="section-contact" class="section appear clearfix">
    <div class="container">

        <div class="row mar-bot40">
            <div class="col-md-offset-3 col-md-6">
                <div class="section-header">
                    <h2 class="section-heading animated" data-animation="bounceInUp">Message Me</h2>

                    <p>This form validates your email, asynchronously post data to a servlet, and sends an email from a concrete java class.</p>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="cform" id="contact-form">
                    <!--///////////////////////////////////////////
                        Pass data to doPost, send data to my email
                        ///////////////////////////////////////////-->
                    <form action="${pageContext.request.contextPath}/ContactForm" method="post" role="form" class="contactForm" id="contactMe">
                        <div class="form-group">
                            <label for="name">Your Name</label>
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Your Email</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                            <div class="validation" id="emailValidate"></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">Subject</label>
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label hidden for="message">Message</label>
                            <textarea class="form-control" name="message" id="message" rows="5" data-rule="required" data-msg="Please write something for us"></textarea>
                            <div class="validation"></div>
                        </div>

                        <button type="submit" class="btn btn-theme pull-left" id="formBtn">SEND MESSAGE</button>
                    </form>
                    <!--////////////////////////////////
                        End form
                        ////////////////////////////////-->

                    <!-- Feedback -->
                    <p id="feedback"></p>

                </div>
            </div>

            <!-- ./span12 -->
        </div>

    </div>
</section>

<!-- map -->
<section id="section-map" class="clearfix">
    <div id="google-map"></div>
</section>

<section id="footer" class="section footer">
    <div class="container">
        <div class="row animated opacity mar-bot20" data-andown="fadeIn" data-animation="animation">
            <div class="col-sm-12 align-center">
                <ul class="social-network social-circle">
                    <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                    <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>

        <div class="row align-center copyright">
            <div class="col-sm-12"><p>Copyright &copy; Amoeba</p>
                <div class="credits">
                    <!--
                        All the links in the footer should remain intact.
                        You can delete the links only if you purchased the pro version.
                        Licensing information: https://bootstrapmade.com/license/
                        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Amoeba
                    -->
                    <a href="https://bootstrapmade.com/">Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
        </div>
    </div>

</section>
<a href="#header" class="scrollup"><i class="fa fa-chevron-up"></i></a>




<!-- Portfolio modal box (FancyBox library) edits
  =============================================== -->


<div id="open_site" class="hidden">
    <a href="http://www.tylerslawnandsnow.com/" target="_blank">
        <button class="btn btn-theme" name="openTylerLandscape" id="proSite">Open Example</button>
    </a>
</div>

<div id="get_documentation" class="hidden">
    <a href="${pageContext.request.contextPath}/Download?fileDownloaded=wordpressDownloadPDF">
       <!-- <button class="btn btn-theme" name="wordpressDownloadPDF" id="wordpressDownloadPDF" type="submit">Download DOCX</button> -->
    </a>
</div>

<div id="electric_gallery_images" class="hidden">
    <a class="fancybox" rel="assemblyGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/assemblyGallery/harness1.jpg"></a>
    <a class="fancybox" rel="assemblyGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/assemblyGallery/harness2.jpg"></a>
    <a class="fancybox" rel="assemblyGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/assemblyGallery/harness3.jpg"></a>
    <a class="fancybox" rel="assemblyGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/assemblyGallery/harness4.jpg"></a>
    <a class="fancybox" rel="assemblyGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/assemblyGallery/harness5.jpg"></a>
</div>

<div id="familiar_gallery" class="hidden">
    <a class="fancybox" rel="familiarGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/familiarGallery/item1.jpg"></a>
    <a class="fancybox" rel="familiarGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/familiarGallery/item2.jpg"></a>
    <a class="fancybox" rel="familiarGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/familiarGallery/item3.jpg"></a>
    <a class="fancybox" rel="familiarGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/familiarGallery/item4.jpg"></a>
    <a class="fancybox" rel="familiarGallery" href="${pageContext.request.contextPath}/assets/img/portfolio/familiarGallery/item5.jpg"></a>
</div>

<div id="get_resume" class="hidden">
    <a href="${pageContext.request.contextPath}/Download?fileDownloaded=downloadDOCX">
        <button class="btn btn-theme" name="downloadDOCX" id="resumeDownloadDOCX" type="submit">Download DOCX</button>
    </a>
    <a href="${pageContext.request.contextPath}/Download?fileDownloaded=downloadPDF">
        <button class="btn btn-theme" name="downloadPDF" id="resumeDownloadPDF" type="submit">Download PDF</button>
    </a>
</div>
<!-- ./End modal edits -->

<script src="${pageContext.request.contextPath}/assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.isotope.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.nicescroll.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/fancybox/jquery.fancybox.pack.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/skrollr.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.localscroll-1.2.7-min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/stellar.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.appear.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/cams_added_js/asyncPOST.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/cams_added_js/portfolioSectionEdits.js"></script>
<script>
    //Google Map
    function initMap()
    {

        var oakland = {lat: 42.5921, lng: -83.3361};

        var mapOpts = {
            scaleControl: false,
            scrollwheel: false,
            center: oakland,
            zoom: 10
        };
        var map = new google.maps.Map(document.getElementById("google-map"), mapOpts);
    }

</script>
<script async defer
        src="https://maps.google.com/maps/api/js?key=AIzaSyCKRni5GENp4nFLwslujwLp-r0n_9pZlg8&callback=initMap">
</script>
</body>
</html>
