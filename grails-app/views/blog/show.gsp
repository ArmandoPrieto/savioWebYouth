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
    <h3>${postInstance.title}</h3>
    <p class="lead">on <g:formatDate date="${postInstance.published.toDate()}" format="EEE, d MMM yyyy" locale="en"/> by <a href="${postInstance.author.url}" class="link-reverse"  target="_blank" class="link-reverse">${postInstance.author.displayName}</a></p>
  </div>
</div>

<!-- // END SUBPAGE HEAD -->

<div class="container">
  <div class="row">
    <div class="col-md-9 has-margin-bottom">
      <article class="blog-content">
       ${raw(postInstance.content)}
      </article>
      <div class="tag-cloud has-margin-bottom"> 
      	<h4>Labels</h4>
      	<g:each in="${postInstance.labels}"><a href="#">${it}</a></g:each>
      </div>
      <section class="comments-block">
        <h3 class="comments-head">Comments</h3>
          <g:each in="${comentList}">
	      <div class="media"> <a class="pull-left" href="#"> <img class="media-object" alt="avatar" src="${it.author.imageUrl}"> </a>
	          <div class="media-body">
	            <h6 class="media-heading">${it.author.displayName}</h6>
	            <p class="text-muted"><g:formatDate date="${it.published.toDate()}" format="EEE, d MMM yyyy" locale="en"/> at 
	            <g:formatDate date="${it.published.toDate()}" format="hh:mm a" locale="en"/></p>
	         	 ${it.content}
	          
	          
	           <g:each in="${it.reply}" var="reply">
		          <div class="media"> <a class="pull-left" href="#"> <img class="media-object" alt="avatar" src="${reply.author.imageUrl}"> </a>
	              <div class="media-body">
		            <h6 class="media-heading">${reply.author.displayName}</h6>
		           <p class="text-muted"><g:formatDate date="${reply.published.toDate()}" format="EEE, d MMM yyyy" locale="en"/> at 
		            <g:formatDate date="${reply.published.toDate()}" format="hh:mm a" locale="en"/></p>
		         	
		         	 ${reply.content}
	         	  </div>
	         	  </div>
	          </g:each>
	          </div>
          </div>
       </g:each>
      
        
      </section>
      <section class="post-comment-form">
        <h3 class="comments-head">Add your comment</h3>
        <form class="form" role="form">
          <div class="row">
            <div class="form-group col-md-4 col-sm-4">
              <input type="text" class="form-control input-lg" placeholder="Your name">
            </div>
            <div class="form-group col-md-4 col-sm-4">
              <input type="email" class="form-control input-lg" placeholder="Your email">
            </div>
            <div class="form-group col-md-4 col-sm-4">
              <input type="url" class="form-control input-lg" placeholder="Website (optional)">
            </div>
          </div>
          <div class="row">
            <div class="form-group col-md-12">
              <textarea cols="8" rows="4" class="form-control input-lg" placeholder="Your comment"></textarea>
            </div>
          </div>
          <div class="row">
            <div class="form-group col-md-12">
              <button type="submit" class="btn btn-primary btn-lg">Submit your comment</button>
            </div>
          </div>
        </form>
      </section>
    </div>
    <!--// col md 9--> 
    
    <!--Blog Sidebar-->
    <div class="col-md-3">
    <%--
      <div class="blog-search has-margin-xs-bottom">
        <div class="input-group input-group-lg">
          <input type="text" class="form-control" placeholder="Search..">
          <span class="input-group-btn">
          <button class="btn btn-default" type="button"><i class="glyphicon glyphicon-search glyphicon-lg"></i></button>
          </span> </div>
      </div>
      <div class="well">
        <h4>About</h4>
        <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
      </div>
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
      
      <div class="tag-cloud has-margin-bottom"> 
       <h4>Labels</h4>
      	<g:each in="${postInstance.labels}"><a href="#">${it}</a></g:each>
      </div>--%>
    </div>
   
  </div> 
</div>

<g:render template="/common/bottom" model="${newsletterInstance}"/>

</body>
</html>