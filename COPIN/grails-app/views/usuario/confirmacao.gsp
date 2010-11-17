<%@ page import="copin.Usuario" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        
        <g:if test="${session.administrador}">
            <meta http-equiv="refresh" content="0; 
			url=administrador/perfil/"> 
        </g:if>
        
        
    </head>
    <body>
        <div class="body">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
        <div id="pageBody">
			<h1>LOGIN</h1>
			
			<g:if test="${flash.message}">
            	<div class="message">${flash.message}</div>
            </g:if>
			
			<g:form action="login" name="loginUsuario">
        	<div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="login"><g:message code="usuario.login.label" default="Login" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuarioInstance, field: 'login', 'errors')}">
                                    <g:textField name="username" value="${usuarioInstance?.login}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"><g:message code="usuario.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuarioInstance, field: 'senha', 'errors')}">
                                    <g:passwordField name="senha" maxlength="20" value="${usuarioInstance?.senha}" />
                                </td>
                            </tr>
                            
                         </tbody>
                    </table>
              </div>
        	
        	<div class="buttons">
                    <span class="button"><g:submitButton name="login" class="login" value="${message(code: 'default.button.login.label', default: 'Entrar')}" /></span>
            </div>
        	</g:form>
        </div>
    </body>
</html>
