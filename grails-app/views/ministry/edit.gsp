<%@ page import="saviowebpage.Ministry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminSavioLayout-2">
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
<%--		<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css" />
  <link rel="stylesheet" href="${resource(dir: 'css', file: 'froala_editor.css')}" type="text/css" />
   <link rel="stylesheet" href="${resource(dir: 'css', file: 'froala_style.css')}" type="text/css" />
   
   <r:require modules="bootstrap-file-upload"/>
    --%>
   
  
<link rel="stylesheet" href="${resource(dir: 'css', file: 'croppic.css')}" />

<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}"	type="text/css" />
<link rel="stylesheet"	href="${resource(dir: 'css', file: 'froala_editor.css')}"	type="text/css" />
<link rel="stylesheet"	href="${resource(dir: 'css', file: 'froala_style.css')}"	type="text/css" />

<script src="${resource(dir: 'js', file: 'croppic.js')}"></script>
<%--  <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" />
		  
 		<script src="${resource(dir: 'js', file: 'main.js')}"></script>
	 --%>
<style>
.fieldcontain input {
	width: 50%;
}
/*section {
            width: 100%;
            margin: auto;
            text-align: left;
        }*/
#cropContainerHeader, #cropContainerModal {
	width: 1300px;
	height: 600px;
	border-color: black;
	border-style: solid;
	border-top-width: 5px;
	border-right-width: 1px;
	border-left-width: 1px;
	border-bottom-width: 1px;
	position: relative; /* or fixed or absolute */
	margin-bottom: 15px;
}
.croppedImg{
width: 1300px;
	height: 600px;
}
</style>
   
	</head>
	<body>
	<div class="content-panel">
	
			<div class="showback" role="navigation">
			<h4><i class="fa fa-angle-right"></i> Actions</h4>
				<g:link class="btn btn-theme" controller="administration" action="index"><i class="fa fa-cog"></i><g:message code="default.home.label"/></g:link>
				<g:link class="btn btn-theme02" action="index"><i class="fa fa-list"></i><g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="btn btn-theme03" action="create"><i class="fa fa-check"></i><g:message code="default.new.label" args="[entityName]" /></g:link>
			
		</div>
		<div id="edit-ministry" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${ministryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${ministryInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<section>
						<div id="yourId"></div>
						<div class="row mt ">
							<div class="col-lg-4 ">
								<h4 class="centered">Head Image</h4>
								<div id="cropContainerModal"></div>
							</div>
						</div>
					</section>
			<g:form class="form-horizontal style-form" url="[resource:ministryInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${ministryInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="showbackNoShadow" role="navigation">
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-theme03" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
				</div>
			</g:form>
		</div>
	
	</div>	

	<script src="${resource(dir: 'js/libs', file: 'jquery-1.11.1.min.js')}"></script>
	<script src="${resource(dir: 'js', file: 'froala_editor.min.js')}"></script>
	<script src="${resource(dir: 'js/plugins', file: 'tables.min.js')}"></script>
	<script src="${resource(dir: 'js/plugins', file: 'lists.min.js')}"></script>
	<script src="${resource(dir: 'js/plugins', file: 'colors.min.js')}"></script>
	<script	src="${resource(dir: 'js/plugins', file: 'media_manager.min.js')}"></script>
	<script	src="${resource(dir: 'js/plugins', file: 'font_family.min.js')}"></script>
	<script src="${resource(dir: 'js/plugins', file: 'font_size.min.js')}"></script>
	<script	src="${resource(dir: 'js/plugins', file: 'block_styles.min.js')}"></script>
	<script src="${resource(dir: 'js/plugins', file: 'video.min.js')}"></script>
	<script>
		  $(function(){
			  
	          $('#edit')
	            .editable({inlineMode: false})
	      });
		var croppicContainerModalOptions = {
				uploadUrl:'${createLink(controller:'image', action: 'upload', absolute: true)}',
				cropUrl:'${createLink(controller:'image', action: 'crop', absolute: true)}',
				outputUrlId:'myOutputId',
				cropData:{
					"frameWidth":1300,
					"frameHeight":600
				},
				modal:true,
				imgEyecandyOpacity:0.4,
				loaderHtml:'<div class="loader bubblingG"><span id="bubblingG_1"></span><span id="bubblingG_2"></span><span id="bubblingG_3"></span></div> '
		}
		var cropContainerModal = new Croppic('cropContainerModal', croppicContainerModalOptions);
		
	
		
	</script>
	
	</body>
</html>
