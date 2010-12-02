
<%@ page import="copin.Inscricao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
        <title><g:message code="Inscricoes de chamada" args="[entityName]" /></title>
    
        <g:if test="${session.usuario}">
		
			<g:if test="${!session.usuario.ehAdministrador}">
				<g:if test="${!session.usuario.ehAvaliador}">
					<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfil')}"/>
				</g:if>
				
			</g:if>
			
		</g:if>
		<g:else>
			<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'index')}"/>
		</g:else>
           
    </head>
    <body>
        <div class="nav">
                 <g:if test="${session.usuario.ehAdministrador}">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfilAdministrador')}"><g:message code="default.home.label"/></a></span>
            </g:if>
            <g:else>
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
            </g:else>
        </div>
        <div class="body">
            <h1><g:message code="Inscricoes de chamada" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
            <table>
            	<tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.tituloDaChamada.label" default="Titulo da chamada:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "tituloDaChamada")}</td>
                            
                        </tr>
            </table>
            
                <table>
                    <thead>
                        <tr>
                        
                        <g:if test="${session.usuario.ehAdministrador }">
                            <g:sortableColumn property="id" title="${message(code: 'inscricao.id.label', default: 'Numero da inscricao')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'inscricao.usuario.nome.label', default: 'Nome')}" />
                        
                        	
                            <g:sortableColumn property="tipoDeChamada" title="${message(code: 'inscricao.usuario.email.label', default: 'Email')}" />
                        
                        
                        </g:if>
                        <g:else>
                        
                            <g:sortableColumn property="idAvalicao" title="${message(code: 'inscricao.id.label', default: 'O que fazer?')}" />
                        
                        
                            <g:sortableColumn property="id" title="${message(code: 'inscricao.id.label', default: 'Candidato')}" />
                        
                        
                        </g:else>
                        
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${inscricaoInstanceList}" status="i" var="inscricaoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                        <g:if test="${inscricaoInstance.chamada.id == chamadaInstance.id}">
                        	<g:if test="${session.usuario.ehAdministrador }">
                        		
                        	    <td><g:link action="show" id="${inscricaoInstance.id}">${fieldValue(bean: inscricaoInstance, field: "id")}</g:link></td>
                        
                            	<td>${fieldValue(bean: inscricaoInstance, field: "usuario.nome")}</td>
                        
                            	<td>${fieldValue(bean: inscricaoInstance, field: "usuario.email")}</td>
                        	
                        	
                        	</g:if>
                        	<g:else>
                        		<g:set var="jaAvaliou" value="${false}"/>
                        		<g:set var="idAvaliacao" value="${0}"/>
                
			                	<g:each in="${avaliacaoList}" status="j" var="avaliacaoInstance">
		                        		<g:if test="${avaliacaoInstance.avaliador.id == session.usuario.id && inscricaoInstance?.id == avaliacaoInstance.inscricao.id }">
		                        			<g:set var="jaAvaliou" value="${true}"/> </br>
		                        			<g:set var="idAvaliacao" value="${avaliacaoInstance?.id}"/>
		                        		</g:if>
			                    </g:each>
                        		
                        		
                        		<td>
                        		<g:form controller="avaliacao">
        							<g:if test="${jaAvaliou }">
        								<g:hiddenField name="id" value="${idAvaliacao}" />
										<span class="button"><g:actionSubmit class="edit" action="edit" value="Editar Avaliacao"></g:actionSubmit></span></br>
									</g:if>
									<g:else>
										<g:hiddenField name="idInscricao" value="${inscricaoInstance?.id}" />
										<span class="button"><g:actionSubmit class="edit" action="create" value="Avaliar candidato"></g:actionSubmit></span></br>
									</g:else>
            		    		</g:form>
                        		</td>
                        		
                        		
                        		<td><g:link action="show" id="${inscricaoInstance.id}">Candidato ${fieldValue(bean: inscricaoInstance, field: "id")}</g:link></td>
                                                	
                        	</g:else>
                        
                        </g:if>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${inscricaoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
