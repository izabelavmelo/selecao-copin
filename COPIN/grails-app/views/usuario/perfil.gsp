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
        	
        	<g:link controller="usuario" action="show">Visualizar meus dados</g:link><br/><br/>
        	
        	<g:link controller="usuario" action="edit">Editar meus dados</g:link><br/><br/>
        	
        	<g:link controller="criterio" action="list">Listar criterios ja criados</g:link><br/><br/>
        	
        	<g:link controller="criterio" action="create">Crie um criterio</g:link><br/><br/>
        	
        	<g:link controller="chamada" action="create">Criar uma chamada</g:link><br/><br/>
        	
        	<g:link controller="chamada" action="list">Listar chamadas criadas</g:link><br/><br/>
        	
        	<g:link controller="usuario" action="logout">Logout</g:link>
            
        </div>

    </body>
</html>