<%@ page import="saviowebpage.Ministry" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta, title, CSS, favicons, etc. -->
 		<meta name="layout" content="savioLayout"/>
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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

<div class="container has-margin-bottom">
  <div class="row">
    <div class="col-md-9 has-margin-bottom"> <img src="${createLink(controller: 'image', action: 'picture',id: ministryInstance.imageId)}" class="img-responsive has-margin-xs-bottom" alt="ministry">
      <p>${raw(ministryInstance.description)}</p>
    </div>
    <!--// col md 9--> 
    <%-- 
    <!--Latest Sermons-->
    <div class="col-md-3">
      <div class="event-right-block has-border has-margin-bottom">
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
    </div>
    --%>
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



</body>
</html>
