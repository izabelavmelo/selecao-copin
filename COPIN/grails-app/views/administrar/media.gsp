
<%@ page import="copin.Inscricao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
        <title><g:message code="Pontuacao" args="[entityName]" /></title>
    	<div align="right">
        
        
        	<g:form class="buttons" controller="usuario" method="post">
        			<g:hiddenField name="id" value="${session.usuario.id}" />
					<span class="button">Ola, ${session.getAt("usuario").nome}!<g:actionSubmit controller="usuario" class="logout" action="logout" value="Logout" /></span></br>
        	</g:form>
        
        </div>  
        
        <g:if test="${session.usuario}">
		
			<g:if test="${session.usuario.ehAvaliador}">
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAvaliador')}"/>
			</g:if>
			
		</g:if>
		
		<g:else>
			<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'index')}"/>
		</g:else>
        
    </head>
    <body>
        <div class="nav">
                 <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
            
            	<table>
                        <tbody>
                        
                            <h1><g:message code="Chamada correspondente"/></h1>
                                              
							<tr class="prop">
                                <td valign="top" class="name">Chamada</td>
                                <td valign="top" class="value"> ${fieldValue(bean: chamadaInstance, field: 'tituloDaChamada', 'errors')}</td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">Vagas</td>
                                <td valign="top" class="value"> ${fieldValue(bean: chamadaInstance, field: 'vagasDisponiveis', 'errors')}</td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">Inscricoes</td>
                                <td valign="top" class="value"> ${inscricaoInstanceTotal}</td>
                            </tr>
  
						</tbody>
				</table>
				
                <table>
                    <thead>
                        <tr>
                        
                        	<g:if test="${mostrarResultado}">
                            	<g:sortableColumn property="classificacao" title="CLASSIFICACAO" />
							</g:if>                   
                        
                        	<g:else>
                            	<g:sortableColumn property="id" title="ID" />
                        	</g:else>
                        
                            <g:sortableColumn property="usuario.nome" title="NOME" />
                        
                        	
                            <g:sortableColumn property="mediaGeral" title="MEDIA" />
                                 
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${inscricaoInstanceList}" status="i" var="inscricaoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                        	<g:if test="${mostrarResultado}">
                            	<td><g:link controller="inscricao" action="show" id="${inscricaoInstance.id}">${i+1}</g:link></td>
                            </g:if>
                            <g:else>
                            	<td><g:link controller="inscricao" action="show" id="${inscricaoInstance.id}">${fieldValue(bean: inscricaoInstance, field: "id")}</g:link></td>
                            </g:else>
                        
                            <td>${fieldValue(bean: inscricaoInstance, field: "usuario.nome")}</td>
                        
                            <td>${fieldValue(bean: inscricaoInstance, field: "mediaGeral")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${inscricaoInstanceTotal}" />
            </div>
        </div>
        <g:form controller="administrar">
	        <g:hiddenField name="idChamada" value="${chamadaInstance.id}" />
	        <g:if test="${mostrarResultado}">
	           	<span class="button"><g:actionSubmit class="list" action="media" value="Voltar"></g:actionSubmit></span>
	        </g:if>
	        <g:else>
	           	<span class="button"><g:actionSubmit class="list" action="resultado" value="Classificacao"></g:actionSubmit></span>
	        </g:else>
        </g:form>
    </body>
</html>
