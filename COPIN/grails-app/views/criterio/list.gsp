
<%@ page import="copin.Criterio" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'criterio.label', default: 'Criterio')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <h1><g:message code="Lista de criterios" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'criterio.id.label', default: 'Id')}" />
                        
                        	<g:sortableColumn property="nome" title="${message(code: 'criterio.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="descricao" title="${message(code: 'criterio.descricao.label', default: 'Descricao')}" />
                        
                            <g:sortableColumn property="peso" title="${message(code: 'criterio.peso.label', default: 'Peso')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${criterioInstanceList}" status="i" var="criterioInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${criterioInstance.id}">${fieldValue(bean: criterioInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: criterioInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: criterioInstance, field: "descricao")}</td>
                        
                            <td>${fieldValue(bean: criterioInstance, field: "peso")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${criterioInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
