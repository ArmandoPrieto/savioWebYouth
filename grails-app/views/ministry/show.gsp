<%@ page import="saviowebpage.Ministry" %>
<!DOCTYPE html>
<html lang="en" prefix="og: http://ogp.me/ns#">
<head>
<!-- Meta, title, CSS, favicons, etc. -->
 		<meta name="layout" content="savioLayout"/>
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>

<meta property="og:title" content="${ministryInstance?.name}" />
<meta property="og:url" content="${createLink(controller:'ministry',action:'show',id:ministryInstance.id,absolute: true)}" />
<meta property="og:site_name" content="http://sym.saintdominicsavio.org" />
<meta property="og:type" content="website" />
<meta property="og:image" content="${createLink(controller: 'image', action: 'picture',id: ministryInstance.imageId)}" />
<meta property="og:description" content="St. Dominic Savio Youth Ministry" />
<meta property="fb:app_id" content="1524105587863612" />

</head>
<body>
   <g:render template="/common/goBack" model="['fragment':'ministries']"/>
<!--SUBPAGE HEAD-->

<div class="subpage-head has-margin-bottom">
  <div class="container">
    <h3>${ministryInstance?.name}</h3>
    <p class="lead"> ${ministryInstance?.subTitle} </p>
  </div>
</div>

<!-- // END SUBPAGE HEAD -->

<div class="container">
  <div class="row">
 
    <div class="col-md-9 has-margin-bottom"> <img src="${createLink(controller: 'image', action: 'picture',id: ministryInstance.imageId)}" class="img-responsive has-margin-xs-bottom" alt="ministry">
       
    <div class="social-buttons"> 
	    <div class="fb-share-button" data-href="${createLink(controller:'ministry',action:'show',id:ministryInstance.id,absolute: true)}" data-layout="button_count" style="vertical-align:top;zoom:1;*display:inline"></div>
	 	<a href="https://twitter.com/share" class="twitter-share-button" data-url="${createLink(controller:'ministry',action:'show',id:ministryInstance.id,absolute: true)}" data-text="${ministryInstance?.name}" data-via="savioym" data-related="savioym" data-hashtags="SavioWebSite">Tweet</a>
	<div class="g-plusone" data-size="medium" data-href="${createLink(controller:'ministry',action:'show',id:ministryInstance.id,absolute: true)}"></div>
   	 </div>
      <p>${raw(ministryInstance.description)}</p>
    
    <div class="social-buttons"> 
	    <div class="fb-share-button" data-href="${createLink(controller:'ministry',action:'show',id:ministryInstance.id,absolute: true)}" data-layout="button_count" style="vertical-align:top;zoom:1;*display:inline"></div>
	 	<a href="https://twitter.com/share" class="twitter-share-button" data-url="${createLink(controller:'ministry',action:'show',id:ministryInstance.id,absolute: true)}" data-text="${ministryInstance?.name}" data-via="savioym" data-related="savioym" data-hashtags="SavioWebSite">Tweet</a>
   
	<div class="g-plusone" data-size="medium" data-href="${createLink(controller:'ministry',action:'show',id:ministryInstance.id,absolute: true)}"></div>
		</div>
  
	</div>
  
    <div class="col-md-3">
      <%-- <div class="event-right-block has-border has-margin-bottom">
        <div class="section-title highlight-bg has-padding-xs-top has-padding-bottom">
          <h4> UPCOMING EVENTS </h4>
        </div>
        <div class="el-block has-margin-xs-bottom">
          <h4> JULY 16 </h4>
          <p class="el-head">Weekly meeting &amp; prayer</p>
          <span>Monday 07:00 AM</span>
          <p class="el-cta"><a class="btn btn-primary" href="#" role="button">Details →</a></p>
        </div>
        <div class="el-block ">
          <h4> JUL 29 </h4>
          <p class="el-head">Show me your faith</p>
          <span>Thursday 02:00 PM</span>
          <p class="el-cta"><a class="btn btn-primary" href="#" role="button">Details →</a></p>
        </div>
      </div>
      <div class="well">
        <div class="section-title">
          <h4> RECENT SERMONS </h4>
        </div>
        <div class="list-group"> <a href="#" class="list-group-item">
          <p class="list-group-item-heading">Heavens and the earth</p>
          <p class="list-group-item-text">24:15 mins</p>
          </a> <a href="#" class="list-group-item">
          <p class="list-group-item-heading">Prayer and petition</p>
          <p class="list-group-item-text">12:00 mins</p>
          </a> <a href="#" class="list-group-item">
          <p class="list-group-item-heading">Fruit of the Spirit</p>
          <p class="list-group-item-text">30:25 mins</p>
          </a> <a href="#" class="list-group-item">
          <p class="list-group-item-heading">Do not be afraid; keep on...</p>
          <p class="list-group-item-text">17:00 mins</p>
          </a> </div>
      </div>
    --%>
    </div>
   
  </div>
</div>

<!-- RELATED MINISTRIES -->
<div class="container">
  <div class="section-title">
    <h4> RELATED MINISTRIES </h4>
  </div>
   <g:render template="/ministry/list" model="['ministries':ministries]"/>
</div>
<!-- // END RELATED MINISTRIES--> 

<g:render template="/common/bottom" model="${newsletterInstance}"/>


<!-- Inserta esta etiqueta en la sección "head" o justo antes de la etiqueta "body" de cierre. -->
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&appId=1524105587863612&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
</body>
</html>
