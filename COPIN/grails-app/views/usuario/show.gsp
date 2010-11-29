
<%@ page import="copin.Usuario" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
     
    	<g:if test="${!session.usuario}">
		
			<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'index')}"/>
			
		</g:if>
    
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(url: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <h1><g:message code="Dados do usuario" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "id")}</td>
                            
                        </tr>
                        
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.login.label" default="Login" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "login")}</td>
                            
                        </tr>
                        
                                            
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.nome.label" default="Nome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "nome")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.endereco.label" default="Endereco" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "endereco")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.telefone.label" default="Telefone" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "telefone")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.dataNascimento.label" default="Data de nascimento" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${fieldValue(bean: usuarioInstance, field: "dataNascimento")}"/></td>
                            
                        </tr>
             
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.email.label" default="Email" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "email")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.cpf.label" default="cpf" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "cpf")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${usuarioInstance?.id}" />
                    <g:if test="${session.usuario.ehAdministrador || session.usuario.ehAvaliador}">
               		     <span class="button"><g:actionSubmit disabled="true" class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                 
                    </g:if>
                    <g:else>
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
               
                    </g:else>
               </g:form>
            </div>
			
        </div>
    </body>
</html>
