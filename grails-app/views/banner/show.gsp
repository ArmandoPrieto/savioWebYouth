
<%@ page import="saviowebpage.Banner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminSavioLayout-2">
		<g:set var="entityName" value="${message(code: 'banner.label', default: 'Banner')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		 <div class="content-panel">
	
	
		<div class="showback" role="navigation">
		<h4><i class="fa fa-angle-right"></i> Actions</h4>
			
			<g:link class="btn btn-theme" controller="administration" action="index"><i class="fa fa-cog"></i><g:message code="default.home.label"/></g:link>
				<g:link class="btn btn-theme02" action="index"><i class="fa fa-list"></i><g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="btn btn-theme03" action="create"><i class="fa fa-check"></i><g:message code="default.new.label" args="[entityName]" /></g:link>
			
		</div>
		<div id="show-banner" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ul class="property-list banner">
			
				<g:if test="${bannerInstance?.preTitle}">
				<li class="fieldcontain">
					<span id="preTitle-label" class="property-label"><g:message code="banner.preTitle.label" default="Pre Title" />:</span>
					
						<span class="property-value" aria-labelledby="preTitle-label"><g:fieldValue bean="${bannerInstance}" field="preTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bannerInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="banner.title.label" default="Title" />:</span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${bannerInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bannerInstance?.text}">
				<li class="fieldcontain">
					<span id="text-label" class="property-label"><g:message code="banner.text.label" default="Text" />:</span>
					
						<span class="property-value" aria-labelledby="text-label"><g:fieldValue bean="${bannerInstance}" field="text"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bannerInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="banner.url.label" default="Url" />:</span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${bannerInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bannerInstance?.buttonText}">
				<li class="fieldcontain">
					<span id="buttonText-label" class="property-label"><g:message code="banner.buttonText.label" default="Button Text" />:</span>
					
						<span class="property-value" aria-labelledby="buttonText-label"><g:fieldValue bean="${bannerInstance}" field="buttonText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bannerInstance?.imageId}">
				<li class="fieldcontain">
					<span id="imageId-label" class="property-label"><g:message code="banner.imageId.label" default="Image Id" />:</span>
					
						<span class="property-value" aria-labelledby="imageId-label"><g:fieldValue bean="${bannerInstance}" field="imageId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bannerInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="banner.type.label" default="Type" />:</span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${bannerInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ul>
			<g:form url="[resource:bannerInstance, action:'delete']" method="DELETE">
				
				<div class="showbackNoShadow" role="navigation">
				<fieldset class="buttons">
					<g:link class="btn btn-theme03" action="edit" resource="${bannerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-theme04" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
