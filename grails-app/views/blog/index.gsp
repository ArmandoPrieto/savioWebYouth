<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta name="layout" content="savioLayout"/>
</head>
<body>

<!--SUBPAGE HEAD-->
<g:render template="/common/goBack" model="['fragment':'bulletin']"/>


<!--SUBPAGE HEAD-->

<div class="subpage-head has-margin-bottom">
  <div class="container">
    <h3>Our Savio Blog</h3>
    <p class="lead">Articles and latest bulletins related to our youth ministry</p>
  </div>
</div>

<!-- // END SUBPAGE HEAD -->

<div class="container">
  <div class="row">
    <div class="col-md-9 has-margin-bottom"> 
      
      <!--Blog list-->
      
      <!--Blog list-->
       <g:each in="${posts.getPostList()}">
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
           <g:if test="${postListPagination.size()==0}">
          		<li class="disabled"><a href="#">«</a></li>
          		<li class="active"><g:link controller="blog" action="index">1 <span class="sr-only">(current)</span></g:link></li>
          		<g:if test="${posts.getNextPageToken() != null}">
	          		 <li><g:link controller="blog" action="index" params="[nextPageToken: posts.getNextPageToken(), item:1]">» </g:link> </li>
	          	</g:if>
          </g:if>
        
          <g:if test="${postListPagination.size()>=1}">
           
          		<li><g:link controller="blog" action="index">«</g:link></li>
          		<li><g:link controller="blog" action="index">1 </g:link></li>
        
          
          <g:each status="i" var="it" in="${postListPagination}">
         <g:set var="count" value="${i+2}" />
	        
	          <g:if test="${i+1==postListPagination.size()}">
	          	<li class="active"><g:link controller="blog" action="index" params="[nextPageToken: postListPagination[i],postListPagination: postListPagination, item:count]">${count} <span class="sr-only">(current)</span></g:link></li>
	          	<g:if test="${posts.getNextPageToken() != null}">
	          		 <li><g:link controller="blog" action="index" params="[nextPageToken: posts.getNextPageToken(),postListPagination: postListPagination, item:count]">» </g:link> </li>
	          	</g:if>
	          	
	          </g:if>
	          <g:else>
	           <li><g:link controller="blog" action="index" params="[nextPageToken: postListPagination[i],postListPagination: postListPagination,item:count]">${count} </g:link> </li>
	          
	          </g:else>
	          
	        
	          
          </g:each>
            </g:if>
          <%--<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>--%>
          <%--<li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
           --%>
        </ul>
      </div>
    </div>
    <!--// col md 9--> 
    <%--
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
    
    </div>
    --%>
  </div>
</div>

<g:render template="/common/bottom" model="${newsletterInstance}"/>
</body>
</html>