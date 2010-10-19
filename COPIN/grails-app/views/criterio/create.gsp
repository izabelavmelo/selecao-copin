

<%@ page import="copin.Criterio" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'criterio.label', default: 'Criterio')}" />
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
            <g:hasErrors bean="${criterioInstance}">
            <div class="errors">
                <g:renderErrors bean="${criterioInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricao"><g:message code="criterio.descricao.label" default="Descricao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: criterioInstance, field: 'descricao', 'errors')}">
                                    <g:textField name="descricao" value="${criterioInstance?.descricao}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="criterio.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: criterioInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${criterioInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="peso"><g:message code="criterio.peso.label" default="Peso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: criterioInstance, field: 'peso', 'errors')}">
                                    <g:textField name="peso" value="${fieldValue(bean: criterioInstance, field: 'peso')}" />
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
