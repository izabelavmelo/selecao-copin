<%@ page import="copin.Usuario" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />        
  		
		<g:if test="${session.usuario}">
			<g:if test="${!session.usuario.ehAdministrador}">

				<g:if test="${session.usuario.ehAvaliador}">
					<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAvaliador')}"/>
				</g:if>
				
				<g:else>
					<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfil')}"/>
				</g:else>
			</g:if>
			
		</g:if>
		<g:else>
			<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'index')}"/>
		</g:else>
		
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
                    <span class="button"><g:actionSubmit class="edit" action="createAvaliador" value="Registrar um avaliador" /></span><br>
                                        
            </g:form>
            
            <g:form controller="chamada">
            		<span class="button"><g:actionSubmit class="edit" action="create" value="Criar uma chamada" /></span></br>
                    <g:hiddenField name="idUsuario" value="${usuarioInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="list" value="Listar chamadas criadas" /></span></br>
            </g:form>
            <g:form controller="usuario" method="post">
        			<g:hiddenField name="id" value="${administradorInstance?.id}" />
					<span class="button"><g:actionSubmit controller="administrador" class="edit" action="logout" value="Logout" /></span></br>
            </g:form>
        </div>

    </body>
</html>