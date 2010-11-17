<%@ page import="copin.Administrador" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'administrador.label', default: 'Administrador')}" />
    
    	<g:if test="${session.usuario}">
            <meta http-equiv="refresh" content="0; 
			url=usuario/perfil/"> 
        </g:if>
    
    </head>
    <body>
        
        <div class="body">
        	
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${administradorInstance}">
            <div class="errors">
                <g:renderErrors bean="${administradorInstance}" as="list" />
            </div>
            </g:hasErrors>
        	
        	<h1> Ola, ${session.getAt("administrador").nome}. O que voce deseja fazer no sistema?</h1><br/>
			
			<g:form controller="administrador" method="post">
                    <g:hiddenField name="id" value="${administadorInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="show" value="Visualizar meus dados" /></span></br>
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="Editar meus dados" /></span></br>                    
            </g:form>
            
            <g:form controller="chamada">
            		<span class="button"><g:actionSubmit class="edit" action="create" value="Criar uma chamada" /></span></br>
                    <span class="button"><g:actionSubmit class="edit" action="list" value="Listar chamadas criadas" /></span></br>
            </g:form>
            <g:form controller="administrador" method="post">
        			<g:hiddenField name="id" value="${administradorInstance?.id}" />
					<span class="button"><g:actionSubmit controller="administrador" class="edit" action="logout" value="Logout" /></span></br>
            </g:form>
        </div>

    </body>
</html>