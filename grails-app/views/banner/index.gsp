
<%@ page import="saviowebpage.Banner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminSavioLayout-2">
		<g:set var="entityName" value="${message(code: 'banner.label', default: 'Banner')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
          	 <div class="content-panel">
          	 
	
		<div class="showback" role="navigation">
		<h4><i class="fa fa-angle-right"></i> Actions</h4>
			<g:link class="btn btn-theme" controller="administration" action="index"><i class="fa fa-cog"></i> <g:message code="default.home.label"/></g:link>
			<g:link class="create" action="create" class="btn btn-theme03"><i class="fa fa-check"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
		<div id="list-banner" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			    <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
			
			
			<thead>
					<tr>
					
						<g:sortableColumn property="preTitle" title="${message(code: 'banner.preTitle.label', default: 'Pre Title')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'banner.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="text" title="${message(code: 'banner.text.label', default: 'Text')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'banner.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="buttonText" title="${message(code: 'banner.buttonText.label', default: 'Button Text')}" />
					
						<g:sortableColumn property="imageId" title="${message(code: 'banner.imageId.label', default: 'Image Id')}" />
							<th> Actions </th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${bannerInstanceList}" status="i" var="bannerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: bannerInstance, field: "preTitle")}</td>
					
						<td>${fieldValue(bean: bannerInstance, field: "title")}</td>
					
						<td>${fieldValue(bean: bannerInstance, field: "text")}</td>
					
						<td>${fieldValue(bean: bannerInstance, field: "url")}</td>
					
						<td>${fieldValue(bean: bannerInstance, field: "buttonText")}</td>
					
						<td>${fieldValue(bean: bannerInstance, field: "imageId")}</td>
						<td><g:link class="btn btn-theme" action="show" id="${bannerInstance.id}">Show detail</g:link></td>
				
					</tr>
				</g:each>
				</tbody>
			</table>
			</section>
			<div class="pagination">
				<g:paginate total="${bannerInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
