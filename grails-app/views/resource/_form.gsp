<%@ page import="saviowebpage.Resource" %>



<div class="form-group fieldcontain ${hasErrors(bean: resourceInstance, field: 'text', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="text">
		<g:message code="resource.text.label" default="Text" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:textField class="form-control" name="text" required="" value="${resourceInstance?.text}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: resourceInstance, field: 'url', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="url">
		<g:message code="resource.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:field class="form-control" type="url" name="url" required="" value="${resourceInstance?.url}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: resourceInstance, field: 'type', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="type">
		<g:message code="resource.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:select class="form-control" name="type" from="${saviowebpage.Resource$ResourceType?.values()}" keys="${saviowebpage.Resource$ResourceType.values()*.name()}" required="" value="${resourceInstance?.type?.name()}" />
	</div>
</div>

