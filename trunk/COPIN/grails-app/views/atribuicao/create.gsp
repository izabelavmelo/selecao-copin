

<%@ page import="copin.Atribuicao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'atribuicao.label', default: 'Atribuicao')}" />
        <title><g:message code="Definir avaliadores" args="[entityName]" /></title>
    
    	<div align="right">
    	
    	<style type="text/css" media="screen">
    	
    		table {
    			border: 3px solid #ccc;
    			width: 50%;
			}
		
    	</style>
        
        
        
        	<g:form class="buttons" controller="usuario" method="post">
        			<g:hiddenField name="id" value="${session.usuario.id}" />
					<span class="button">Ola, ${session.getAt("usuario").nome}!<g:actionSubmit controller="usuario" class="logout" action="logout" value="Logout" /></span></br>
        	</g:form>
        
        </div>  
        
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
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
        	
             <span class="menuButton"><a class="list" href="${createLink(uri: '/chamada/index')}"><g:message code="Lista de chamadas"/></a></span>
        </div>
        <div class="body">
             <h2 align="center" size="1"><g:message code="Definir avaliadores" args="[entityName]" /></h2>
            
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${atribuicaoInstance}">
            <div class="errors">
                <g:renderErrors bean="${atribuicaoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                
                 <table>
                        <tbody>
                        
                            <h1><g:message code="Chamada correspondente"/></h1>
                                              
							<tr class="prop">
                                    <td valign="top" class="name"><g:message code="atribuicao.chamada.tituloDaChamada.label" default="Chamada" /></td>
                                <td valign="top" class="value"> ${fieldValue(bean: chamadaInstance, field: 'tituloDaChamada', 'errors')}</td>
                            </tr>
  
						</tbody>
					</table>
					</br>
                    <table>
                        <tbody>
                        	<h1><g:message code="Escolher avaliador"/></h1>    
                        	                                          
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="usuarios"><g:message code="atribuicao.usuarios.label" default="Avaliador" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: atribuicaoInstance, field: 'usuarios', 'errors')}">
                                    <g:select name="usuarios.id" from="${avaliadoresList}" optionValue="nome" optionKey="id" value="${atribuicaoInstance?.usuarios?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                	<g:hiddenField name="idChamada" value="${chamadaInstance?.id}" />
                	
                	<span class="button"><g:submitButton name="create" class="save" value="${message(code: 'Definir', default: 'Create')}" /></span>
                	
                </div>
            </g:form>
        </div>
    </body>
</html>
