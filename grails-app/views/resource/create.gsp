<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminSavioLayout-2">
		<g:set var="entityName" value="${message(code: 'resource.label', default: 'Resource')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="content-panel">
			<div class="showback" role="navigation">
			<h4>
				<i class="fa fa-angle-right"></i> Actions
			</h4>
			<g:link class="btn btn-theme" controller="administration" action="index"><i
				class="fa fa-cog"></i> <g:message code="default.home.label" /></g:link>
			<g:link class="create" action="create" class="btn btn-theme02">
				<i class="fa fa-check"></i>
				<g:message code="default.new.label" args="[entityName]" />
			</g:link>
		</div>
		<div id="create-resource" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${resourceInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${resourceInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal style-form" url="[resource:resourceInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="showbackNoShadow" role="navigation">
				<fieldset class="buttons">
					<g:submitButton name="create" class="save btn btn-theme" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
				</div>
			</g:form>
			
			
			
		</div>
		</div>
	</body>
</html>
