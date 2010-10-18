

<%@ page import="copin.Chamada" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chamada.label', default: 'Chamada')}" />
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
            <g:hasErrors bean="${chamadaInstance}">
            <div class="errors">
                <g:renderErrors bean="${chamadaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataFinalInscricoes"><g:message code="chamada.dataFinalInscricoes.label" default="Data Final Inscricoes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'dataFinalInscricoes', 'errors')}">
                                    <g:datePicker name="dataFinalInscricoes" precision="day" value="${chamadaInstance?.dataFinalInscricoes}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataInicialInscricoes"><g:message code="chamada.dataInicialInscricoes.label" default="Data Inicial Inscricoes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'dataInicialInscricoes', 'errors')}">
                                    <g:datePicker name="dataInicialInscricoes" precision="day" value="${chamadaInstance?.dataInicialInscricoes}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="texto"><g:message code="chamada.texto.label" default="Texto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'texto', 'errors')}">
                                    <g:textField name="texto" value="${chamadaInstance?.texto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoDeChamada"><g:message code="chamada.tipoDeChamada.label" default="Tipo De Chamada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'tipoDeChamada', 'errors')}">
                                    <g:textField name="tipoDeChamada" value="${chamadaInstance?.tipoDeChamada}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tituloDaChamada"><g:message code="chamada.tituloDaChamada.label" default="Titulo Da Chamada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'tituloDaChamada', 'errors')}">
                                    <g:textField name="tituloDaChamada" value="${chamadaInstance?.tituloDaChamada}" />
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