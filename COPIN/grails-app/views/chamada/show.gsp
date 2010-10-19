
<%@ page import="copin.Chamada" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chamada.label', default: 'Chamada')}" />
        <title><g:message code="Criterio" args="[entityName]" /></title>
    </head>
    <body>
    	<div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><a class="home" href="${createLink(uri: '/chamada/list')}"><g:message code="Lista de chamada"/></a></span>
        </div>
        <div class="body">
            <h1><g:message code="Criterio" /></h1>
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
                            <td valign="top" class="name"><g:message code="chamada.tituloDaChamada.label" default="Titulo da chamada:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "tituloDaChamada")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.tipoDeChamada.label" default="Tipo de chamada:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "tipoDeChamada")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.texto.label" default="Texto:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "texto")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.DataInicialInscricoes.label" default="Data inicial das inscricoes:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "DataInicialInscricoes")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.DataFinalInscricoes.label" default="Data final das inscricoes:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "DataFinalInscricoes")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.formula.label" default="Formula:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "formula")}</td>
                            
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