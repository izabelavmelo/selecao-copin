<%@ page import="copin.Usuario" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
    </head>
    <body>
        
        <div class="body">
        	
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${usuarioInstance}">
            <div class="errors">
                <g:renderErrors bean="${usuarioInstance}" as="list" />
            </div>
            </g:hasErrors>
        	
        	<h1> Ola, ${session.getAt("usuario").nome}. O que voce deseja fazer no sistema?</h1><br/>
			
			<g:form controller="usuario" method="post">
                    <g:hiddenField name="id" value="${usuarioInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="show" value="Visualizar meus dados" /></span></br>
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="Editar meus dados" /></span></br>                    
            </g:form>
            
            <g:form controller="chamada">
            		<span class="button"><g:actionSubmit class="edit" action="create" value="Criar uma chamada" /></span></br>
                    <span class="button"><g:actionSubmit class="edit" action="list" value="Listar chamadas criadas" /></span></br>
            </g:form>
            <g:form controller="usuario" method="post">
        			<g:hiddenField name="id" value="${usuarioInstance?.id}" />
					<span class="button"><g:actionSubmit controller="usuario" class="edit" action="logout" value="Logout" /></span></br>
            </g:form>
        </div>

    </body>
</html>