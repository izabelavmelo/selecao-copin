
<%@ page import="copin.Administrador" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'administrador.label', default: 'Administrador')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    
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
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'administrador.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="login" title="${message(code: 'administrador.login.label', default: 'Login')}" />
                        
                            <g:sortableColumn property="senha" title="${message(code: 'administrador.senha.label', default: 'Senha')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'administrador.nome.label', default: 'Nome')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${administradorInstanceList}" status="i" var="administradorInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${administradorInstance.id}">${fieldValue(bean: administradorInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: administradorInstance, field: "login")}</td>
                        
                            <td>${fieldValue(bean: administradorInstance, field: "senha")}</td>
                        
                            <td>${fieldValue(bean: administradorInstance, field: "nome")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${administradorInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
