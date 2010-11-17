
<%@ page import="copin.Inscricao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
        <title><g:message code="Minhas inscricoes" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
                 <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <h1><g:message code="Minhas inscricoes" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'inscricao.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="alunoEspecial" title="${message(code: 'inscricao.alunoEspecial.label', default: 'Aluno Especial')}" />
                        
                            <g:sortableColumn property="anoDeConclusao" title="${message(code: 'inscricao.anoDeConclusao.label', default: 'Ano De Conclusao')}" />
                        
                            <g:sortableColumn property="anoDeConclusaoMestrado" title="${message(code: 'inscricao.anoDeConclusaoMestrado.label', default: 'Ano De Conclusao Mestrado')}" />
                        
                            <g:sortableColumn property="anoPoscomp" title="${message(code: 'inscricao.anoPoscomp.label', default: 'Ano Poscomp')}" />
                        
                            <g:sortableColumn property="cargoFuncoes" title="${message(code: 'inscricao.cargoFuncoes.label', default: 'Cargo Funcoes')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${inscricaoInstanceList}" status="i" var="inscricaoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                        <g:if test="${inscricaoInstance.usuario.id == usuarioInstance}">
                        
                            <td><g:link action="show" id="${inscricaoInstance.id}">${fieldValue(bean: inscricaoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: inscricaoInstance, field: "alunoEspecial")}</td>
                        
                            <td><g:formatDate date="${inscricaoInstance.anoDeConclusao}" /></td>
                        
                            <td><g:formatDate date="${inscricaoInstance.anoDeConclusaoMestrado}" /></td>
                        
                            <td><g:formatDate date="${inscricaoInstance.anoPoscomp}" /></td>
                        
                            <td>${fieldValue(bean: inscricaoInstance, field: "cargoFuncoes")}</td>
                        </g:if>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${inscricaoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
