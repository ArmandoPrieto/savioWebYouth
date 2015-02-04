
<%@ page import="saviowebpage.Quote" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminSavioLayout-2">
		<g:set var="entityName" value="${message(code: 'quote.label', default: 'Quote')}" />
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
		<div id="show-quote" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ul class="property-list quote">
			
				<g:if test="${quoteInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="quote.author.label" default="Author" />:</span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${quoteInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quoteInstance?.text}">
				<li class="fieldcontain">
					<span id="text-label" class="property-label"><g:message code="quote.text.label" default="Text" />:</span>
					
						<span class="property-value" aria-labelledby="text-label"><g:fieldValue bean="${quoteInstance}" field="text"/></span>
					
				</li>
				</g:if>
			
			</ul>
			<g:form url="[resource:quoteInstance, action:'delete']" method="DELETE">
				
				<div class="showbackNoShadow" role="navigation">
				<fieldset class="buttons">
					<g:link class="btn btn-theme03" action="edit" resource="${quoteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-theme04" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				
				</fieldset>
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
