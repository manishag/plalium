<%@ page import="plalium.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="item.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${itemInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'summary', 'error')} required">
	<label for="summary">
		<g:message code="item.summary.label" default="Summary" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="summary" cols="40" rows="5" maxlength="1000" required="" value="${itemInstance?.summary}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="item.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="age" from="${plalium.Age?.values()}" keys="${plalium.Age.values()*.name()}" required="" value="${itemInstance?.age?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'itemType', 'error')} required">
	<label for="itemType">
		<g:message code="item.itemType.label" default="Item Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="itemType" from="${plalium.ItemType?.values()}" keys="${plalium.ItemType.values()*.name()}" required="" value="${itemInstance?.itemType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="item.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${itemInstance?.url}"/>

</div>

