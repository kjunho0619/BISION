<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Forum - post view</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <img alt="image" class="rounded-circle" src="img/profile_small.jpg"/>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="block m-t-xs font-bold">David Williams</span>
                            <span class="text-muted text-xs block">Art Director <b class="caret"></b></span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a class="dropdown-item" href="profile">Profile</a></li>
                            <li><a class="dropdown-item" href="contacts">Contacts</a></li>
                            <li><a class="dropdown-item" href="mailbox">Mailbox</a></li>
                            <li class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="login">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="index"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="index">Dashboard v.1</a></li>
                        <li><a href="dashboard_2">Dashboard v.2</a></li>
                        <li><a href="dashboard_3">Dashboard v.3</a></li>
                        <li><a href="dashboard_4_1">Dashboard v.4</a></li>
                        <li><a href="dashboard_5">Dashboard v.5 </a></li>
                    </ul>
                </li>
                <li>
                    <a href="layouts"><i class="fa fa-diamond"></i> <span class="nav-label">Layouts</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">Graphs</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="graph_flot">Flot Charts</a></li>
                        <li><a href="graph_morris">Morris.js Charts</a></li>
                        <li><a href="graph_rickshaw">Rickshaw Charts</a></li>
                        <li><a href="graph_chartjs">Chart.js</a></li>
                        <li><a href="graph_chartist">Chartist</a></li>
                        <li><a href="c3">c3 charts</a></li>
                        <li><a href="graph_peity">Peity Charts</a></li>
                        <li><a href="graph_sparkline">Sparkline Charts</a></li>
                    </ul>
                </li>
                <li>
                    <a href="mailbox"><i class="fa fa-envelope"></i> <span class="nav-label">Mailbox </span><span class="label label-warning float-right">16/24</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="mailbox">Inbox</a></li>
                        <li><a href="mail_detail">Email view</a></li>
                        <li><a href="mail_compose">Compose email</a></li>
                        <li><a href="email_template">Email templates</a></li>
                    </ul>
                </li>
                <li>
                    <a href="metrics"><i class="fa fa-pie-chart"></i> <span class="nav-label">Metrics</span>  </a>
                </li>
                <li>
                    <a href="widgets"><i class="fa fa-flask"></i> <span class="nav-label">Widgets</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">Forms</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="form_basic">Basic form</a></li>
                        <li><a href="form_advanced">Advanced Plugins</a></li>
                        <li><a href="form_wizard">Wizard</a></li>
                        <li><a href="form_file_upload">File Upload</a></li>
                        <li><a href="form_editors">Text Editor</a></li>
                        <li><a href="form_autocomplete">Autocomplete</a></li>
                        <li><a href="form_markdown">Markdown</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop"></i> <span class="nav-label">App Views</span>  <span class="float-right label label-primary">SPECIAL</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="contacts">Contacts</a></li>
                        <li><a href="profile">Profile</a></li>
                        <li><a href="profile_2">Profile v.2</a></li>
                        <li><a href="contacts_2">Contacts v.2</a></li>
                        <li><a href="projects">Projects</a></li>
                        <li><a href="project_detail">Project detail</a></li>
                        <li><a href="activity_stream">Activity stream</a></li>
                        <li><a href="teams_board">Teams board</a></li>
                        <li><a href="social_feed">Social feed</a></li>
                        <li><a href="clients">Clients</a></li>
                        <li><a href="full_height">Outlook view</a></li>
                        <li><a href="vote_list">Vote list</a></li>
                        <li><a href="file_manager">File manager</a></li>
                        <li><a href="calendar">Calendar</a></li>
                        <li><a href="issue_tracker">Issue tracker</a></li>
                        <li><a href="blog">Blog</a></li>
                        <li><a href="article">Article</a></li>
                        <li><a href="faq">FAQ</a></li>
                        <li><a href="timeline">Timeline</a></li>
                        <li><a href="pin_board">Pin board</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="search_results">Search results</a></li>
                        <li><a href="lockscreen">Lockscreen</a></li>
                        <li><a href="invoice">Invoice</a></li>
                        <li><a href="login">Login</a></li>
                        <li><a href="login_two_columns">Login v.2</a></li>
                        <li><a href="forgot_password">Forget password</a></li>
                        <li><a href="register">Register</a></li>
                        <li><a href="404">404 Page</a></li>
                        <li><a href="500">500 Page</a></li>
                        <li><a href="empty_page">Empty page</a></li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-globe"></i> <span class="nav-label">Miscellaneous</span><span class="label label-info float-right">NEW</span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="toastr_notifications">Notification</a></li>
                        <li><a href="nestable_list">Nestable list</a></li>
                        <li><a href="agile_board">Agile board</a></li>
                        <li><a href="timeline_2">Timeline v.2</a></li>
                        <li><a href="diff">Diff</a></li>
                        <li><a href="pdf_viewer">PDF viewer</a></li>
                        <li><a href="i18support">i18 support</a></li>
                        <li><a href="sweetalert">Sweet alert</a></li>
                        <li><a href="idle_timer">Idle timer</a></li>
                        <li><a href="truncate">Truncate</a></li>
                        <li><a href="password_meter">Password meter</a></li>
                        <li><a href="spinners">Spinners</a></li>
                        <li><a href="spinners_usage">Spinners usage</a></li>
                        <li><a href="tinycon">Live favicon</a></li>
                        <li><a href="google_maps">Google maps</a></li>
                        <li><a href="datamaps">Datamaps</a></li>
                        <li><a href="social_buttons">Social buttons</a></li>
                        <li><a href="code_editor">Code editor</a></li>
                        <li><a href="modal_window">Modal window</a></li>
                        <li><a href="clipboard">Clipboard</a></li>
                        <li><a href="text_spinners">Text spinners</a></li>
                        <li class="active"><a href="forum_main">Forum view</a></li>
                        <li><a href="validation">Validation</a></li>
                        <li><a href="tree_view">Tree view</a></li>
                        <li><a href="loading_buttons">Loading buttons</a></li>
                        <li><a href="chat_view">Chat view</a></li>
                        <li><a href="masonry">Masonry</a></li>
                        <li><a href="tour">Tour</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">UI Elements</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="typography">Typography</a></li>
                        <li><a href="icons">Icons</a></li>
                        <li><a href="draggable_panels">Draggable Panels</a></li> <li><a href="resizeable_panels">Resizeable Panels</a></li>
                        <li><a href="buttons">Buttons</a></li>
                        <li><a href="video">Video</a></li>
                        <li><a href="tabs_panels">Panels</a></li>
                        <li><a href="tabs">Tabs</a></li>
                        <li><a href="notifications">Notifications & Tooltips</a></li>
                        <li><a href="helper_classes">Helper css classes</a></li>
                        <li><a href="badges_labels">Badges, Labels, Progress</a></li>
                    </ul>
                </li>

                <li>
                    <a href="grid_options"><i class="fa fa-laptop"></i> <span class="nav-label">Grid options</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-table"></i> <span class="nav-label">Tables</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="table_basic">Static Tables</a></li>
                        <li><a href="table_data_tables">Data Tables</a></li>
                        <li><a href="table_foo_table">Foo Tables</a></li>
                        <li><a href="jq_grid">jqGrid</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="ecommerce_products_grid">Products grid</a></li>
                        <li><a href="ecommerce_product_list">Products list</a></li>
                        <li><a href="ecommerce_product">Product edit</a></li>
                        <li><a href="ecommerce_product_detail">Product detail</a></li>
                        <li><a href="ecommerce_cart">Cart</a></li>
                        <li><a href="ecommerce_orders">Orders</a></li>
                        <li><a href="ecommerce_payments">Credit Card form</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-picture-o"></i> <span class="nav-label">Gallery</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="basic_gallery">Lightbox Gallery</a></li>
                        <li><a href="slick_carousel">Slick Carousel</a></li>
                        <li><a href="carousel">Bootstrap Carousel</a></li>

                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap"></i> <span class="nav-label">Menu Levels </span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a href="#">Third Level <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>

                            </ul>
                        </li>
                        <li><a href="#">Second Level Item</a></li>
                        <li>
                            <a href="#">Second Level Item</a></li>
                        <li>
                            <a href="#">Second Level Item</a></li>
                    </ul>
                </li>
                <li>
                    <a href="css_animation"><i class="fa fa-magic"></i> <span class="nav-label">CSS Animations </span><span class="label label-info float-right">62</span></a>
                </li>
                <li class="landing_link">
                    <a target="_blank" href="landing"><i class="fa fa-star"></i> <span class="nav-label">Landing Page</span> <span class="label label-warning float-right">NEW</span></a>
                </li>
                <li class="special_link">
                    <a href="package"><i class="fa fa-database"></i> <span class="nav-label">Package</span></a>
                </li>
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to INSPINIA+ Admin Theme.</span>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a class="dropdown-item float-left" href="profile">
                                    <img alt="image" class="rounded-circle" src="img/a7.jpg">
                                </a>
                                <div class="media-body">
                                    <small class="float-right">46h ago</small>
                                    <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a class="dropdown-item float-left" href="profile">
                                    <img alt="image" class="rounded-circle" src="img/a4.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="float-right text-navy">5h ago</small>
                                    <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a class="dropdown-item float-left" href="profile">
                                    <img alt="image" class="rounded-circle" src="img/profile.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="float-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="mailbox" class="dropdown-item">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="mailbox" class="dropdown-item">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="float-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <a href="profile" class="dropdown-item">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="float-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <a href="grid_options" class="dropdown-item">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="float-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications" class="dropdown-item">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>


                <li>
                    <a href="login">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-sm-4">
                    <h2>Forum - post view</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index">Home</a>
                        </li>
                        <li class="breadcrumb-item active">
                            <strong>Forum - post view</strong>
                        </li>
                    </ol>
                </div>
            </div>
            <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">

                        <div class="ibox-content forum-post-container">
                            <div class="forum-post-info">
                                <h4><span class="text-navy"><i class="fa fa-globe"></i> General discussion</span> - Announcements - <span class="text-muted">Free talks</span></h4>
                            </div>
                            <div class="media">
                                <a class="forum-avatar" href="#">
                                    <img src="img/a1.jpg" class="rounded-circle" alt="image">
                                    <div class="author-info">
                                        <strong>Posts:</strong> 542<br/>
                                        <strong>Joined:</strong> April 11.2015<br/>
                                    </div>
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">The standard chunk of Lorem Ipsum</h4>
                                    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.
                                    <br/><br/>
                                    Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                                    <br/><br/>
                                    - Mike Smith
                                    CEO, Zender Inc.
                                </div>
                            </div>
                            <div class="media">
                                <a class="forum-avatar" href="#">
                                    <img src="img/a2.jpg" class="rounded-circle" alt="image">
                                    <div class="author-info">
                                        <strong>Posts:</strong> 32<br/>
                                        <strong>Joined:</strong> Dec 11.2015<br/>
                                    </div>
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">There are many variations of passages of Lorem Ipsum available</h4>
                                    Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures
                                    <br/><br/>
                                    - Alex Kunter
                                    Designer, Kurtner Company
                                </div>
                            </div>
                            <div class="media">
                                <a class="forum-avatar" href="#">
                                    <img src="img/a3.jpg" class="rounded-circle" alt="image">
                                    <div class="author-info">
                                        <strong>Posts:</strong> 543<br/>
                                        <strong>Joined:</strong> June 21.2015<br/>
                                    </div>
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">Hampden-Sydney College in Virginia</h4>
                                     All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures
                                    <br/><br/>
                                    - Monica Jackson
                                    UX developer
                                </div>
                            </div>
                            <div class="media">
                                <a class="forum-avatar" href="#">
                                    <img src="img/a4.jpg" class="rounded-circle" alt="image">
                                    <div class="author-info">
                                        <strong>Posts:</strong> 72<br/>
                                        <strong>Joined:</strong> March 08.2015<br/>
                                    </div>
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">Suffered alteration in some form,</h4>
                                    All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures
                                    <br/><br/>
                                    - John Ken
                                    UX/UI developer

                                    <div class="media">
                                        <a class="forum-avatar" href="#">
                                            <img src="img/a7.jpg" class="rounded-circle" alt="image">
                                            <div class="author-info">
                                                <strong>Posts:</strong> 253<br/>
                                                <strong>Joined:</strong> Oct 08.2015<br/>
                                            </div>
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading"> Latin words, combined with a handful of mode</h4>
                                            Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.
                                            <div class="photos">
                                                <a href="http://24.media.tumblr.com/20a9c501846f50c1271210639987000f/tumblr_n4vje69pJm1st5lhmo1_1280.jpg" target="_blank"> <img src="img/p1.jpg" class="forum-photo" alt="image"></a>
                                                <a href="http://37.media.tumblr.com/9afe602b3e624aff6681b0b51f5a062b/tumblr_n4ef69szs71st5lhmo1_1280.jpg" target="_blank"> <img src="img/p3.jpg" class="forum-photo" alt="image"></a>
                                            </div>

                                            Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                            <br/><br/>
                                            - Adam Smith
                                            CEO
                                        </div>
                                    </div>
                                    <div class="media">
                                        <a class="forum-avatar" href="#">
                                            <img src="img/a8.jpg" class="rounded-circle" alt="image">
                                            <div class="author-info">
                                                <strong>Posts:</strong> 431<br/>
                                                <strong>Joined:</strong> March 25.2015<br/>
                                            </div>
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading">Virginia, looked up one of the more obscure Latin words</h4>
                                            Distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using
                                            <br/><br/>
                                            Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words
                                            <br/><br/>
                                            - Sandra Jackson
                                            UI developer
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="footer">
            <div class="float-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2018
            </div>
        </div>

        </div>
        </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

</body>

</html>
