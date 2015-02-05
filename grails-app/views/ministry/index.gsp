
<%@ page import="saviowebpage.Ministry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminSavioLayout-2">
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	
 
          	 <div class="content-panel">
          	 
	
		<div class="showback" role="navigation">
		<h4><i class="fa fa-angle-right"></i> Actions</h4>
			<g:link class="btn btn-theme" controller="administration" action="index"><i class="fa fa-cog"></i> <g:message code="default.home.label"/></g:link>
			<g:link class="create" action="create" class="btn btn-theme03"><i class="fa fa-check"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
		<div id="list-ministry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
                    
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
			
			
			<thead>
					<tr>
					
						<%--<g:sortableColumn property="imageId" title="${message(code: 'ministry.imageId.label', default: 'Image Url')}" /> --%>
					
						
						<%--<g:sortableColumn property="description" title="${message(code: 'ministry.description.label', default: 'Description')}" />--%>
					
						<g:sortableColumn property="name" title="${message(code: 'ministry.name.label', default: 'Name')}" />
						<g:sortableColumn property="subTitle" title="${message(code: 'ministry.subTitle.label', default: 'Short Description')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'ministry.type.label', default: 'Type')}" />
						<g:sortableColumn property="isPublished" title="${message(code: 'ministry.isPublished.label', default: 'Published')}" />
					
					<th> Actions </th>
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${ministryInstanceList}" status="i" var="ministryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<%--<td><g:link action="show1" id="${ministryInstance.id}">${fieldValue(bean: ministryInstance, field: "imageId")}</g:link></td> --%>
						
					
						<%--<td>${fieldValue(bean: ministryInstance, field: "description")}</td>--%>
					
						<td>${fieldValue(bean: ministryInstance, field: "name")}</td>
						<td>${fieldValue(bean: ministryInstance, field: "subTitle")}</td>
					
						<td>${fieldValue(bean: ministryInstance, field: "type")}</td>
						<td>${fieldValue(bean: ministryInstance, field: "isPublished")==true?'Yes':'No'}</td>
							
			<td><g:link class="btn btn-theme" action="show1" id="${ministryInstance.id}">Show detail</g:link></td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			  </section>
				
                   
                        
			<div class="pagination">
				<g:paginate total="${ministryInstanceCount ?: 0}" />
			</div>
			 </div>
		</div>
		
		
	</body>
</html>
