<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta name="layout" content="savioLayout"/>
</head>
<body>
<!-- Navigation Bar Starts -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="index.html"> <img src="images/church-logo.png" alt="church logo" class="img-responsive"></a> </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.html">HOME</a></li>
        <li><a href="about.html">ABOUT</a></li>
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">MINISTRY <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-left" role="menu">
            <li><a href="ministry.html">Childrens Ministry</a></li>
            <li><a href="ministry.html">Students Ministry</a></li>
            <li><a href="ministry.html">Groups</a></li>
          </ul>
        </li>
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">SERMONS <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-left" role="menu">
            <li><a href="sermons.html">Christ-Occupied</a></li>
            <li><a href="sermons.html">God's Love</a></li>
            <li><a href="sermons.html">Faithfulness</a></li>
            <li><a href="sermons.html">Praise Him</a></li>
          </ul>
        </li>
        <li class="dropdown active"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-left" role="menu">
            <li><a href="image-gallery.html">Image Gallery</a></li>
            <li><a href="video-gallery.html">Video Gallery</a></li>
            <li><a href="blog.html">Blog list</a></li>
            <li><a href="blog-single.html">Blog Single</a></li>
            <li><a href="events-programs.html">Events &amp; Programs</a></li>
            <li><a href="event-single.html">Event Single</a></li>
            <li><a href="event-calendar.html">Event Calendar</a></li>
            <li><a href="charity-donation.html">Charity &amp; Donations</a></li>
            <li class="divider"></li>
            <li class="dropdown-header">OTHER PAGES</li>
            <li><a href="prayers.html">Prayers</a></li>
            <li><a href="faq.html">FAQ</a></li>
            <li><a href="shortcodes.html">Shortcodes</a></li>
            <li><a href="full-width.html">Full Width</a></li>
            <li><a href="left-sidebar.html">Left Sidebar</a></li>
            <li><a href="http://themeforest.net/user/surjithctly/portfolio">Buy this Template</a></li>
          </ul>
        </li>
        <li><a href="contact.html">CONTACT</a></li>
      </ul>
    </div>
    <!--/.nav-collapse --> 
    
  </div>
</div>
<!--// Navbar Ends--> 

<!--SUBPAGE HEAD-->

<div class="subpage-head has-margin-bottom">
  <div class="container">
    <h3>Our Blog</h3>
    <p class="lead">Articles and latest bulletins related to our youth ministry</p>
  </div>
</div>

<!-- // END SUBPAGE HEAD -->

<div class="container">
  <div class="row">
    <div class="col-md-9 has-margin-bottom"> 
      
      <!--Blog list-->
      
      <!--Blog list-->
       <g:each in="${posts}">
	        <div class="row has-margin-bottom">
	        <div class="col-md-4 col-sm-4" style='height:150px;overflow:hidden'>  
	        	<img class="img-responsive center-block" src="${it.image}" alt="bulletin blog"> 
	        </div>
	        <div class="col-md-8 col-sm-8 bulletin">
	          <h4 class="media-heading">${it.title}</h4>
	          <p>on <g:formatDate date="${it.published.toDate()}" format="EEE, d MMM yyyy" locale="en"/> by <a href="${it.author.url}" class="link-reverse"  target="_blank">${it.author.displayName}</a></p>
	          <p> ${raw(it.shortContent)}</p>
	          <a class="btn btn-primary" href="${createLink(controller: 'blog', action: 'show',id:it.postId)}" role="button">Read Article →</a> </div>
	    </div>
       </g:each>
      <!--Blog list-->
      <!-- PAGINATION -->
      
      <div class="text-center center-block">
        <ul class="pagination">
          <li class="disabled"><a href="#">«</a></li>
          <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">»</a></li>
        </ul>
      </div>
    </div>
    <!--// col md 9--> 
    
    <!--Blog Sidebar-->
    <div class="col-md-3">
      <div class="blog-search has-margin-xs-bottom">
        <div class="input-group input-group-lg">
          <input type="text" class="form-control" placeholder="Search..">
          <span class="input-group-btn">
          <button class="btn btn-default" type="button"><i class="glyphicon glyphicon-search glyphicon-lg"></i></button>
          </span> </div>
      </div>
      <div class="well">
        <h4>About this blog</h4>
        <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
      </div>
      <%-- 
      <div class="vertical-links has-margin-xs-bottom">
        <h4>Blog archives</h4>
        <ul class="list-unstyled">
          <li><a href="#">March 2014 <span class="badge pull-right">23</span> </a></li>
          <li><a href="#">February 2014 <span class="badge pull-right">17</span> </a></li>
          <li><a href="#">January 2014 <span class="badge pull-right">34</span> </a></li>
          <li><a href="#">December 2013 <span class="badge pull-right">28</span> </a></li>
          <li><a href="#">November 2013 <span class="badge pull-right">12</span> </a></li>
          <li><a href="#">October 2013 <span class="badge pull-right">28</span> </a></li>
        </ul>
      </div>
      <div class="tag-cloud has-margin-bottom"> <a href="#">catholic</a> <a href="#">bulletin</a> <a href="#">programs</a> <a href="#">events</a> <a href="#">church</a> <a href="#">charity</a> <a href="#">website</a> <a href="#">template</a> <a href="#">non-profit</a> <a href="#">belief</a> <a href="#">ministry</a> <a href="#">sermon</a> <a href="#">nature</a> </div>
    --%>
    </div>
  </div>
</div>

<g:render template="/common/bottom" model="${newsletterInstance}"/>
</body>
</html>