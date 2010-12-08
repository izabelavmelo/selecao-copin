<%@ page import="copin.Usuario" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        
        <style type="text/css" media="screen">
        	
        	.buttons input {
        		padding: 15px 6px;
    			border: 20px #ccc;
    			color: #333;
    			cursor: pointer;
    			font-size: 12px;
    			font-weight: bold;
    			margin-left: 30px;
    			overflow: visible;
    		
        	}
        	
        	.buttons input.listaInscricao {
        		padding: 17px 6px;
    		
        	}
        	
        	.buttons input.edit {
 				background: transparent url(../images/skin/editar.png) 5px 50% no-repeat;
 				padding: 16px 6px;
    		}
        	
        	.buttons input.visualizar{
        		padding: 16px 6px;
        	}
        	
        	.buttons input.chamadas {
        		background: transparent url(../images/skin/chamadas2.png) 5px 50% no-repeat;
    			
			}
			
			.buttons input.logout {
    			padding-left: 28px;
    			margin-left: 5px;
    			margin-top:0px;
			}
			
		</style>
        
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <g:set var="paginaInicial" value="${"http://localhost:8080/"}" escope="session" />
        
        <div align="right">
        
        
        	<g:form class="buttons" controller="usuario" method="post">
        			<g:hiddenField name="id" value="${usuarioInstance?.id}" />
					<span class="button">Ola, ${session.getAt("usuario").nome}!<g:actionSubmit controller="usuario" class="logout" action="logout" value="Logout" /></span></br>
        	</g:form>
        
        </div>      
  			
    	<g:if test="${session.usuario}">
		
			<g:if test="${session.usuario.ehAvaliador}">
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAvaliador')}"/>
			</g:if>
				
			<g:if test="${session.usuario.ehAdministrador}">
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAdministrador')}"/>
			</g:if>
			
		</g:if>
		<g:else>
			<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'index')}"/>
		</g:else>
    	
		
		
    </head>
    
    <body>
    
      <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(controller:'usuario', action:'perfil')}"><g:message code="default.home.label"/></a></span>
        </div>
        
        <div class="body">
        	
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${usuarioInstance}">
            <div class="errors">
                <g:renderErrors bean="${usuarioInstance}" as="list" />
            </div>
            </g:hasErrors>
        	
        	<h1>O que voce deseja fazer no sistema?</h1><br/>
			
			<g:form class="buttons" controller="usuario" method="post">
                    <g:hiddenField name="id" value="${usuarioInstance?.id}" />
                    <span class="button"><g:actionSubmit class="visualizar" action="show" value="              Visualizar meus dados" /></span></br>
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="              Editar meus dados" /></span></br>                    
            </g:form>
            
            <g:form class="buttons" controller="inscricao">
            		<span class="button"><g:actionSubmit class="listaInscricao" action="list" value="              Listar minhas inscricoes" /></span></br>
            </g:form>
            
            <g:form class="buttons" controller="chamada">
            		<g:hiddenField name="idUsuario" value="${usuarioInstance?.id}" />
            		<span class="button"><g:actionSubmit class="chamadas" action="list" value="        Verificar chamadas ativas" /></span></br>
            </g:form>
            
            
        </div>

    </body>
</html>