<%@ page import="common.BannerType" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta, title, CSS, favicons, etc. -->
 <meta name="layout" content="savioLayout"/>

 <link rel="stylesheet" href="${resource(dir: 'css', file: 'circle.css')}" />
 
 <style>
  <g:each in="${banners}">
  	
  	.slide-${it.id} {
	background:url(${createLink(controller: 'image', action: 'picture', id: it.imageId)}) no-repeat;
	background-size:cover;
	}
  </g:each>
 
 </style>
</head>
<body>
<div id="top"></div>
<g:render template="/common/menu" model="${menus}"/>



   <g:if test="${flash.message}">
  <div class="alert alert-error" style="display: block">${flash.message}</div>
</g:if>

<!-- BANNER SLIDER
    ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <g:each in="${banners}" var="it" status="i">
      <li data-target="#myCarousel" data-slide-to="${i}" ${i==0?'active':''}></li>
    </g:each>
  </ol>
  
  <div class="carousel-inner">
    <g:each in="${banners}" var="it" status="i">
    <div class="item slide-${it.id} ${i==0?'active':''}">
      <div class="container">
        <div class="carousel-caption">
          <h3>${it.preTitle}</h3>
          <h1>${it.title}</h1>
          <p class="lead">${it.text}</p>
          <g:if test="${it.type == BannerType.VIDEO}">
            <p><a class="btn btn-lg btn-primary" 
          href="${it.url}"
          data-toggle="lightbox"
          data-title="${it.title}" 
          data-width="1280"
          role="button">${it.buttonText} &rarr;</a></p>
        </g:if>
        <g:else>
        <p><a class="btn btn-lg btn-primary" href="${it.url}" role="button" target="_blank">${it.buttonText} &rarr;</a></p>
        </g:else>
        
        </div>
      </div>
    </div>
    </g:each>
  </div>
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> </div>
<!-- // Banner Slider --> 


<!--UPCOMING EVENT-->
<%-- 
<div id="lineMessage" class="highlight-bg has-margin-bottom">
  <div class="container event-cta">
    <div class="ec-txt"> <span>UPCOMING EVENT</span>
      <p>Rock out youth 2015! 20-20-14 St. Jhon Bosco 3:00pm</p>
    </div>
    <a class="btn btn-lg btn-primary" href="http://www.donboscowest.org/salesianym/rockoutyp" target="_blank" role="button">Program details →</a> </div>
</div>
--%>
<!-- // UPCOMING EVENT --> 

 
<!--FEATURED BLOCK-->
<div id="ourMethod" class=".container-fluid">
  <div class="row feature-block ch-grid" >
    
     <div class="section-title">
    <h4> OUR METHOD </h4>
  </div>
  


<ul class="ch-grid">
    <li>
        <div class="ch-item ch-img-1">
            <div class="ch-info">
                <h3>Reason</h3>
                <p> <a href="http://www.sdb.org/en/Education_System/Preventive_System">Preventive System</a></p>
            </div>
        </div>
    </li>
    <li>
        <div class="ch-item ch-img-2">
            <div class="ch-info">
                <h3>Religion</h3>
                <p> <a href="http://www.sdb.org/en/Education_System/Preventive_System">Preventive System</a></p>
            </div>
        </div>
    </li>
    <li>
        <div class="ch-item ch-img-3">
            <div class="ch-info">
                <h3>Love & Kindness</h3>
                <p> <a href="http://www.sdb.org/en/Education_System/Preventive_System">Preventive System</a></p>
            </div>
        </div>
    </li>
</ul>
  
   
  </div>
</div>
<!-- // END FEATURED BLOCK--> 

<!--EVENT LISTS-->
<div id="events" class="highlight-bg has-margin-bottom">
  <div class="container event-list">
    <div class="section-title">
      <h4> PROGRAMS &amp; EVENTS </h4>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="owl-carousel">
         <g:each in="${events}">
   
  			<div class="el-block item">
            <h4>  ${it.startDateTime.toString('MMM dd').toUpperCase()} </h4>
            <p class="el-head"> ${it.summary}</p>  
  
  
            <span> ${it.startDateTime.toString('EEEE hh:mm aa')}</span>
            <p class="el-cta"><a class="btn btn-primary" href="${it.htmlLink}" role="button">Details &rarr;</a></p>
          </div>
		</g:each>
        
        </div>
      </div>
    </div>
  </div>
</div>
<!-- // END EVENT LISTS --> 

<!-- BLOG LIST / LATEST SERMONS -->

<div  id="bulletin" class="container has-margin-bottom">

  <div class="row">
    <div class="col-md-9 has-margin-bottom">
      <div class="section-title left-align-desktop">
        <h4> LATEST BULLETIN </h4>
      </div>
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
     </div>
    <!--// col md 9--> 
    
    <!--Latest Sermons-->
    <div id="recommendedLinks"class="col-md-3">
      <div class="well">
        <div class="section-title">
          <h4> RECOMMENDED LINKS</h4>
        </div>
        <img src="${resource(dir: 'images', file: 'links.jpg')}" class="img-responsive center-block" alt="video thumb">
        <div class="list-group"> 
         <g:each in="${links}">
       		 <a href="${it.url}" class="list-group-item" target="_blank">
          		<p class="list-group-item-heading">${it.text}</p>
         	 </a> 
          </g:each>
        </div>
      </div>
    </div>
    
     <!--Latest Sermons-->
    <div id="recommendedVideos" class="col-md-3">
      <div class="well">
        <div class="section-title">
          <h4> RECOMMENDED VIDEOS</h4>
        </div>
        <img src="${resource(dir: 'images', file: 'video-overlay.png')}" class="img-responsive center-block" alt="video thumb">
        <div class="list-group"> 
         <g:each in="${videos}">
	        <a href="${it.url}" class="list-group-item" target="_blank">
	          <p class="list-group-item-heading">${it.text}</p>
	        </a> 
         </g:each>
          
        </div>
      </div>
    </div>
   
  </div>
</div><g:render template="/common/menu" />
<!-- END BLOG LIST / LATEST SERMONS --> 

<!--CHARITY DONATION


<div class="container has-margin-bottom">
  <div class="section-title">
    <h4>GRACE OUTREACH </h4>
  </div>
  <div class="charity-box">
    <div class="charity-image"> <img src="${resource(dir: 'images', file: 'charity-donation.jpg')}" class="img-responsive" alt="charity donation fundraising"></div>
    <div class="charity-desc">
      <h3>Help human trafficking survivors</h3>
      <p> Posted by <a class="link-reverse" href="#">Steven</a> on Aug 11 2014</p>
      <h2 class="pledged-amount">$6560.00</h2>
      <p>Pledged of $15000 goal</p>
      <div class="progress">
        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"><span class="sr-only">60% Complete</span>60%</div>
      </div>
      <div class="pull-left has-margin-xs-right">
        <h3>24</h3>
        <p>Backers</p>
      </div>
      <div class="pull-left">
        <h3 class="pledged-amount">17</h3>
        <p>Days left</p>
      </div>
      <div class="donate-now"> <a href="charity-donation.html" class="btn btn-lg btn-primary">Donate Now →</a> </div>
    </div>
  </div>
</div>

// END CHARITY DONATION --> 

<!--OUR GALLERY
<div class="container has-margin-bottom">
  <div class="section-title">
    <h4> OUR CORE TEAM </h4>
  </div>
  <div class="img-gallery row">
   <div class="col-md-12">
        <div class="owl-carousel3">
        
     
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'taaj.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'taaj.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'julio.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'julio.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'Yami.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'Yami.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'alynn.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'alynn.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
   
    
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'michael.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'michael.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'david.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'david.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'gaby.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'gaby.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'nick.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'nick.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    
    
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'armando.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'armando.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'daya.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'daya.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'jacob.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'jacob.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'jose.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'jose.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
  	
  	
  	<div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'aaron.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'aaron.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'edi.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'edi.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'christina.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'christina.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
 	
  </div>
   </div>
  </div>
</div>
-->
<!--// END OUR GALLERY --> 

<!-- BIBLE QUOTES -->
<div id="quotes" class="highlight-bg has-margin-bottom">
  <div class="container event-list">
    <div class="section-title">
      <h4> BIBLE QUOTES </h4>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="owl-carousel2">
        <g:each in="${quotes}">
          <div class="item">
            <blockquote class="blockquote-centered"> ${it.text} 
            <small>${it.author}</small> 
            </blockquote>
          </div>
          </g:each> 
        
        </div>
      </div>
    </div>
  </div>
</div>
<!-- // END BIBLE QUOTES --> 

<!-- OUR MINISTRIES -->
<div id="ministries" class="container">
  <div class="section-title">
    <h4> OUR MINISTRIES </h4>
  </div>
  
     <g:render template="/ministry/list" model="['ministries':ministries,'n':1]"/>
   <%-- 
  <div class="row feature-block">
    <div class="col-md-4 col-sm-6 has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_1.jpg')}" alt="catholic church">
      <h5>CAMP SAVIO</h5>
      <p>The world says that blood and sweat equals success. But we can rest in Jesus' finished work at the cross because of His blood, sweat, tears... </p>
      <p><a href="ministry.html" role="button">Read more →</a></p>
    </div>
    <!-- /.col-md-4 -->
    <div class="col-md-4 col-sm-6 has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_2.jpg')}" alt="ministry sermon">
      <h5>MONDAY YOUTH GROUP</h5>
      <p>When we rest in the Lord and draw from His Word every day, we have the confidence in knowing our Father has already opened doors...</p>
      <p><a href="ministry.html" role="button">Read more →</a></p>
    </div>
    <!-- /.col-md-4 -->
    <div class="col-md-4 col-sm-8 col-sm-offset-2 col-md-offset-0 center-this has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_3.jpg')}" alt="bulletin programs">
      <h5>YOUNG ADULT GROUP</h5>
      <p>Through these he has given us his very great and precious promises, so that through them you may participate in the divine nature...</p>
      <p><a href="ministry.html" role="button">Read more →</a></p>
    </div>
    <!-- /.col-md-4 --> 
  </div>
  --%>

</div>
<!-- // END OUR MINISTRIES--> 

<g:render template="/common/bottom" model="${newsletterInstance}"/>

<!-- // END --> 

</body>
</html>
