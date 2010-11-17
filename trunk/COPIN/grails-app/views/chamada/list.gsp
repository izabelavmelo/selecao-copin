
<%@ page import="copin.Chamada" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chamada.label', default: 'Chamada')}" />
        <title><g:message code="Lista de chamadas" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="Nova chamada" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="Lista de chamadas" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'chamada.id.label', default: 'Id')}" />
                        
                    	    <g:sortableColumn property="tituloDaChamada" title="${message(code: 'chamada.tituloDaChamada.label', default: 'Titulo Da Chamada')}" />
                    
                     		<g:sortableColumn property="tipoDeChamada" title="${message(code: 'chamada.tipoDeChamada.label', default: 'Tipo De Chamada')}" />
                        
                       		<g:sortableColumn property="vagasDisponiveis" title="${message(code: 'chamada.vagasDisponiveis.label', default: 'Vagas disponiveis')}" />
                           
                        	<g:sortableColumn property="dataInicialInscricoes" title="${message(code: 'chamada.dataInicialInscricoes.label', default: 'Data Inicial Inscricoes')}" />
                        
                            <g:sortableColumn property="dataFinalInscricoes" title="${message(code: 'chamada.dataFinalInscricoes.label', default: 'Data Final Inscricoes')}" />
                        
              				
                           
                           
                                
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${chamadaInstanceList}" status="i" var="chamadaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td>
                    		<g:form controller="chamada">
                   				<g:hiddenField name="id" value="${chamadaInstance?.id}" />
            					<span class="button"><g:actionSubmit action="show" value="Visualizar" ></g:actionSubmit></span></br>
            	    		</g:form>
            	    
            	            
            	    		<g:form controller="inscricao">
            	    		    <g:if test="${Calendar.getInstance().after(chamadaInstance.dataInicialInscricoes) && Calendar.getInstance().before(chamadaInstance.dataFinalInscricoes)}">
            	    		    	<g:hiddenField name="id" value="${chamadaInstance?.id}" />
            	        			<span class="button"><g:actionSubmit class="edit" action="create" value="Inscricao"></g:actionSubmit></span></br>
					            </g:if>
					            <g:else>
					            	<span class="button"><g:actionSubmit disabled="true" class="edit" action="create" value="Inscricao"></g:actionSubmit></span></br>
					            </g:else>
            	    		</g:form>
            	    		</td>
            	    
                            <td>${fieldValue(bean: chamadaInstance, field: "tituloDaChamada")}</td>
                        
                            <td>${fieldValue(bean: chamadaInstance, field: "tipoDeChamada")}</td>
      
                            <td>${fieldValue(bean: chamadaInstance, field: "vagasDisponiveis")}</td>
                        
                        	<td><g:formatDate date="${chamadaInstance.dataInicialInscricoes}" /></td>
                        
                            <td><g:formatDate date="${chamadaInstance.dataFinalInscricoes}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${chamadaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
