
<%@ page import="saviowebpage.Resource" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminSavioLayout-2">
		<g:set var="entityName" value="${message(code: 'resource.label', default: 'Resource')}" />
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
	<div id="show-resource" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                     
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
                              <tr>
                                  <th><g:message code="ministry.name.label" default="Text" /></th>
                                  <th><g:message code="ministry.subTitle.label" default="Url" /></th>
                                  <th><g:message code="ministry.description.label" default="Type" /></th>
                                  
                                  
                               
                                 
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                              
				<td>
					<g:if test="${resourceInstance?.text}">
				
					
						<span class="property-value" aria-labelledby="text-label"><g:fieldValue bean="${resourceInstance}" field="text"/></span>
					
				
				</g:if>
				<td>
					<g:if test="${resourceInstance?.url}">
				
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${resourceInstance}" field="url"/></span>
					
				
				</g:if>	
				</td>
				
				
				
				<td>
					<g:if test="${resourceInstance?.type}">
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${resourceInstance}" field="type"/></span>
				</g:if>		
				</td>
				
                                  
                              </tr>
                             
                              </tbody>
                          </table>
                          </section>
                  </div><!-- /content-panel -->
               </div><!-- /col-lg-4 -->			
		  	</div><!-- /row -->
		  <g:form url="[resource:resourceInstance, action:'delete']" method="DELETE">
				<div class="showbackNoShadow" role="navigation">
				<fieldset class="buttons">
					<g:link class="btn btn-theme03" action="edit" resource="${resourceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-theme04" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				
				</fieldset>
				</div>
			</g:form>
			
			
		</div>
		</div>
	</body>
</html>
