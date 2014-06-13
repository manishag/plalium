<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	    <title>Plalium :: Signup</title>
	    <link rel="shortcut icon" type="image/x-icon" href="/plalium/images/favicon.ico" />
	    <link href="/plalium/css/style.css" rel="stylesheet" type="text/css" />
	    <script src="/js/formcheck.js" language="javascript" type="text/javascript"></script>
	    <script src="/js/chrome.js" language="javascript" type="text/javascript"></script>
	</head>
	<body>
	    <div class="main">
        <div class="modal">
            <div class="top">
                <div class="logo">
                    <a href="/plalium/user/index" title="Plalium">
                        <img src="/plalium/images/logo1.gif" alt="Plalium" /></a></div>
                <div class="toplink" style="float: right; padding: 20px 71px 0 0;">
                    <div class="clr">
                    </div>
                </div>
					<div id="create-user" class="content scaffold-create" role="main">
						<h1><g:message code="default.create.label" args="new user" /></h1>
						<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
						</g:if>
						<g:hasErrors bean="${userInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${userInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
						</g:hasErrors>
						<g:form url="[resource:userInstance, action:'save']" >
							<fieldset class="form">
								<g:render template="form"/>
							</fieldset>
							<fieldset class="buttons">
								<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
							</fieldset>
						</g:form>
					</div>
				</div>
	        </div>
	    </div>
	</body>
</html>
