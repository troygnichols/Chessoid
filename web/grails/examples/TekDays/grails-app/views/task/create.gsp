

<%@ page import="tekdays.Task" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${taskInstance}">
            <div class="errors">
                <g:renderErrors bean="${taskInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="task.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${taskInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="assignedTo"><g:message code="task.assignedTo.label" default="Assigned To" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'assignedTo', 'errors')}">
                                    <g:textField name="assignedTo" value="${taskInstance?.assignedTo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dueDate"><g:message code="task.dueDate.label" default="Due Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'dueDate', 'errors')}">
                                    <g:datePicker name="dueDate" precision="day" value="${taskInstance?.dueDate}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="task.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${taskInstance?.description}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>