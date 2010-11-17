

<%@ page import="copin.Administrador" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'administrador.label', default: 'Administrador')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    
    	<g:if test="${session.usuario}">
            <meta http-equiv="refresh" content="0; 
			url=usuario/perfil/"> 
        </g:if>
    
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${administradorInstance}">
            <div class="errors">
                <g:renderErrors bean="${administradorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" name="criarAdministrador">
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="login"><g:message code="administrador.login.label" default="Login" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: administradorInstance, field: 'login', 'errors')}">
                                    <g:textField name="login" value="${administradorInstance?.login}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"><g:message code="administrador.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: administradorInstance, field: 'senha', 'errors')}">
                                    <g:passwordField name="senha" maxlength="20" value="${administradorInstance?.senha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="administrador.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: administradorInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${administradorInstance?.nome}" />
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
