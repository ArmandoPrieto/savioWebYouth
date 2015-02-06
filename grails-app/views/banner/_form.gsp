<%@ page import="saviowebpage.Banner" %>



<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'preTitle', 'error')} ">
	<label class="col-sm-2 col-sm-2 control-label" for="preTitle">
		<g:message code="banner.preTitle.label" default="Pre Title" />
		
	</label>
	<div class="col-sm-10">
	<g:textField class="form-control" name="preTitle" value="${bannerInstance?.preTitle}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'title', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="title">
		<g:message code="banner.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:textField class="form-control" name="title" required="" value="${bannerInstance?.title}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'text', 'error')} ">
	<label class="col-sm-2 col-sm-2 control-label" for="text">
		<g:message code="banner.text.label" default="Text" />
		
	</label>
	<div class="col-sm-10">
	<g:textField class="form-control" name="text" value="${bannerInstance?.text}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'url', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="url">
		<g:message code="banner.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:field class="form-control" type="url" name="url" required="" value="${bannerInstance?.url}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'buttonText', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="buttonText">
		<g:message code="banner.buttonText.label" default="Button Text" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:textField class="form-control" name="buttonText" required="" value="${bannerInstance?.buttonText}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'imageId', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="imageId">
		<g:message code="banner.imageId.label" default="Image Id" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:textField class="form-control" id="myOutputId" type="text" name="imageId" required="" value="${bannerInstance?.imageId}" style="visibility:hidden"/>
	</div> 
</div>

<div class="form-group fieldcontain ${hasErrors(bean: bannerInstance, field: 'type', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="type">
		<g:message code="banner.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:select class="form-control" name="type" from="${common.BannerType?.values()}" keys="${common.BannerType.values()*.name()}" required="" value="${bannerInstance?.type?.name()}" />
	</div>
</div>

