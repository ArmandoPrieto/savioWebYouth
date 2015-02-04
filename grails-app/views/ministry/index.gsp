
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
			<a class="btn btn-theme" href="${createLink(uri: '/')}"><i class="fa fa-cog"></i> <g:message code="default.home.label"/></a>
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
					
						<th> Actions </th>
						
						<%--<g:sortableColumn property="description" title="${message(code: 'ministry.description.label', default: 'Description')}" />--%>
					
						<g:sortableColumn property="name" title="${message(code: 'ministry.name.label', default: 'Name')}" />
						<g:sortableColumn property="subTitle" title="${message(code: 'ministry.subTitle.label', default: 'Short Description')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'ministry.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ministryInstanceList}" status="i" var="ministryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<%--<td><g:link action="show1" id="${ministryInstance.id}">${fieldValue(bean: ministryInstance, field: "imageId")}</g:link></td> --%>
						<td><g:link action="show1" id="${ministryInstance.id}">Show detail</g:link></td>
						
					
						<%--<td>${fieldValue(bean: ministryInstance, field: "description")}</td>--%>
					
						<td>${fieldValue(bean: ministryInstance, field: "name")}</td>
						<td>${fieldValue(bean: ministryInstance, field: "subTitle")}</td>
					
						<td>${fieldValue(bean: ministryInstance, field: "type")}</td>
					
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
