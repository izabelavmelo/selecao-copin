
<%@ page import="copin.Avaliacao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'avaliacao.label', default: 'Avaliacao')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'avaliacao.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="enade" title="${message(code: 'avaliacao.enade.label', default: 'Enade')}" />
                        
                            <g:sortableColumn property="mediaEscolar" title="${message(code: 'avaliacao.mediaEscolar.label', default: 'Media Escolar')}" />
                        
                            <g:sortableColumn property="enadeMestrado" title="${message(code: 'avaliacao.enadeMestrado.label', default: 'Enade Mestrado')}" />
                        
                            <g:sortableColumn property="mediaEscolarMestrado" title="${message(code: 'avaliacao.mediaEscolarMestrado.label', default: 'Media Escolar Mestrado')}" />
                        
                            <g:sortableColumn property="numeroInscricaoPoscomp" title="${message(code: 'avaliacao.numeroInscricaoPoscomp.label', default: 'Numero Inscricao Poscomp')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${avaliacaoInstanceList}" status="i" var="avaliacaoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${avaliacaoInstance.id}">${fieldValue(bean: avaliacaoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "enade")}</td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "mediaEscolar")}</td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "enadeMestrado")}</td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "mediaEscolarMestrado")}</td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "numeroInscricaoPoscomp")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${avaliacaoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
