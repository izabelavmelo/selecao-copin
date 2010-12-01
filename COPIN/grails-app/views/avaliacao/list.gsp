
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
                        
                            <g:sortableColumn property="mediaGeral" title="${message(code: 'avaliacao.mediaGeral.label', default: 'Media Geral')}" />
                        
                            <g:sortableColumn property="cartasDeRecomendacao" title="${message(code: 'avaliacao.cartasDeRecomendacao.label', default: 'Cartas De Recomendacao')}" />
                        
                            <g:sortableColumn property="curriculo" title="${message(code: 'avaliacao.curriculo.label', default: 'Curriculo')}" />
                        
                            <g:sortableColumn property="cartaDeIntencoes" title="${message(code: 'avaliacao.cartaDeIntencoes.label', default: 'Carta De Intencoes')}" />
                        
                            <g:sortableColumn property="planoDeTrabalho" title="${message(code: 'avaliacao.planoDeTrabalho.label', default: 'Plano De Trabalho')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${avaliacaoInstanceList}" status="i" var="avaliacaoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${avaliacaoInstance.id}">${fieldValue(bean: avaliacaoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "mediaGeral")}</td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "cartasDeRecomendacao")}</td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "curriculo")}</td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "cartaDeIntencoes")}</td>
                        
                            <td>${fieldValue(bean: avaliacaoInstance, field: "planoDeTrabalho")}</td>
                        
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
