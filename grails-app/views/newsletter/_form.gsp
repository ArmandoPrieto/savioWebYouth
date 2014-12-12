<%@ page import="saviowebpage.Newsletter" %>



<div class="fieldcontain ${hasErrors(bean: newsletterInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="newsletter.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${newsletterInstance?.email}"/>

</div>

