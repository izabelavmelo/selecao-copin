

<%@ page import="copin.Inscricao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
        <title><g:message code="Inscricao" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
        	<span class="menuButton"><a class="list" href="${createLink(uri: '/chamada/index')}"><g:message code="Lista"/></a></span>
        
        </div>
        
        <div class="body">
            <h2 align="center" size="1"><g:message code="Inscricao" args="[entityName]" /></h2>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${inscricaoInstance}">
            <div class="errors">
                <g:renderErrors bean="${inscricaoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                    	<thead>
                    		
                    	</thead>
                    
                        <tbody>
                        
                        	<h1><g:message code="Dados basicos"/></h1>
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="usuario.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuarioInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${usuarioInstance.nome}" />
                                </td>
                            </tr>
                            
                           
                        	
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="usuario.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuarioInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${usuarioInstance.email}" />
                                </td>
                            </tr>
                        	
                        	
                        	
                        	
                        	
                        	
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="a"><g:message code="inscricao.a.label" default="A" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'a', 'errors')}">
                                    
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
