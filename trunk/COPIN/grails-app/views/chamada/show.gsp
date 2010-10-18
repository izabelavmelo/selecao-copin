
<%@ page import="copin.Chamada" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chamada.label', default: 'Chamada')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.dataFinalInscricoes.label" default="Data Final Inscricoes" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${chamadaInstance?.dataFinalInscricoes}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.dataInicialInscricoes.label" default="Data Inicial Inscricoes" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${chamadaInstance?.dataInicialInscricoes}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.texto.label" default="Texto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "texto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.tipoDeChamada.label" default="Tipo De Chamada" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "tipoDeChamada")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.tituloDaChamada.label" default="Titulo Da Chamada" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "tituloDaChamada")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.usuarios.label" default="Usuarios" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${chamadaInstance.usuarios}" var="u">
                                    <li><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${chamadaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
