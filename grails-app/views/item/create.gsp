<!DOCTYPE html>
<html>
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
            </div> 
            <br></br>
            <br></br>
            <br></br>       
		<div id="create-item" class="content scaffold-create" role="main">
			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${itemInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${itemInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:uploadForm url="[resource:itemInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				  <fieldset>
				  <legend>Upload image</legend>

			    <label for="avatar">Item Image (16K)</label>
			    <input type="file" name="itemImage" id="itemImage" />
			    <div style="font-size:0.8em; margin: 1.0em;">
			      For best results, your image should have a width-to-height ratio of 4:5.
			      For example, if your image is 80 pixels wide, it should be 100 pixels high.
			    </div>

				</fieldset>
				
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
							
				
			</g:uploadForm>
			<br />
		</div>
		</div>
		</div>
	</body>
</html>
