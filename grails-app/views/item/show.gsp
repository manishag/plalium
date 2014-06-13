
<%@ page import="plalium.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="item.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${itemInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.summary}">
				<li class="fieldcontain">
					<span id="summary-label" class="property-label"><g:message code="item.summary.label" default="Summary" /></span>
					
						<span class="property-value" aria-labelledby="summary-label"><g:fieldValue bean="${itemInstance}" field="summary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="item.image.label" default="Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.imageType}">
				<li class="fieldcontain">
					<span id="imageType-label" class="property-label"><g:message code="item.imageType.label" default="Image Type" /></span>
					
						<span class="property-value" aria-labelledby="imageType-label"><g:fieldValue bean="${itemInstance}" field="imageType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="item.age.label" default="Age" /></span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${itemInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.itemType}">
				<li class="fieldcontain">
					<span id="itemType-label" class="property-label"><g:message code="item.itemType.label" default="Item Type" /></span>
					
						<span class="property-value" aria-labelledby="itemType-label"><g:fieldValue bean="${itemInstance}" field="itemType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="item.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="user" action="show" id="${itemInstance?.owner?.id}">${itemInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="item.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${itemInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:itemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
