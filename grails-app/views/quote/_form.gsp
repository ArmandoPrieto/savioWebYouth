<%@ page import="saviowebpage.Quote" %>



<div class="form-group fieldcontain ${hasErrors(bean: quoteInstance, field: 'author', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="author">
		<g:message code="quote.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:textField class="form-control" name="author" required="" value="${quoteInstance?.author}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: quoteInstance, field: 'text', 'error')} required">
	<label class="col-sm-2 col-sm-2 control-label" for="text">
		<g:message code="quote.text.label" default="Text" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<g:textField class="form-control" name="text" required="" value="${quoteInstance?.text}"/>
	</div>
</div>

