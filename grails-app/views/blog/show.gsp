<!DOCTYPE html>
<html lang="en">
<head>


<!-- Meta, title, CSS, favicons, etc. -->

<meta name="layout" content="savioLayout"/>

</head>
<body>

 <g:render template="/common/goBack" model="['fragment':'bulletin']"/>

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
      	<g:if test="${postInstance.labels}"> <h4>Labels</h4></g:if>
      	<g:each in="${postInstance.labels}"><a href="#">${it}</a></g:each>
      </div>
      <section class="comments-block">
       <g:if test="${comentList}"> <h3 class="comments-head">Comments</h3></g:if>
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
      <%-- 
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
      --%>
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