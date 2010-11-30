

<%@ page import="copin.Atribuicao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'atribuicao.label', default: 'Atribuicao')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${atribuicaoInstance}">
            <div class="errors">
                <g:renderErrors bean="${atribuicaoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${atribuicaoInstance?.id}" />
                <g:hiddenField name="version" value="${atribuicaoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="chamada"><g:message code="atribuicao.chamada.label" default="Chamada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: atribuicaoInstance, field: 'chamada', 'errors')}">
                                    <g:select name="chamada.id" from="${copin.Chamada.list()}" optionKey="id" value="${atribuicaoInstance?.chamada?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="usuarios"><g:message code="atribuicao.usuarios.label" default="Usuarios" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: atribuicaoInstance, field: 'usuarios', 'errors')}">
                                    <g:select name="usuarios.id" from="${copin.Usuario.list()}" optionKey="id" value="${atribuicaoInstance?.usuarios?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
