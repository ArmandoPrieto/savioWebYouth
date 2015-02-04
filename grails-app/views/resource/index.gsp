
<%@ page import="saviowebpage.Resource" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminSavioLayout-2">
		<g:set var="entityName" value="${message(code: 'resource.label', default: 'Resource')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	
	  	 <div class="content-panel">
			<div class="showback" role="navigation">
			<h4><i class="fa fa-angle-right"></i> Actions</h4>
			<g:link class="btn btn-theme" controller="administration" action="index"><i class="fa fa-cog"></i> <g:message code="default.home.label"/></g:link>
			<g:link class="create" action="create" class="btn btn-theme03"><i class="fa fa-check"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		
		
		</div>
		<div id="list-resource" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			    <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
			<thead>
					<tr>
					
						<g:sortableColumn property="text" title="${message(code: 'resource.text.label', default: 'Text')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'resource.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'resource.type.label', default: 'Type')}" />
					<th> Actions </th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${resourceInstanceList}" status="i" var="resourceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: resourceInstance, field: "text")}</td>
					
						<td>${fieldValue(bean: resourceInstance, field: "url")}</td>
					
						<td>${fieldValue(bean: resourceInstance, field: "type")}</td>
						
							<td><g:link class="btn btn-theme" action="show" id="${resourceInstance.id}">Show detail</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			  </section>
			<div class="pagination">
				<g:paginate total="${resourceInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
