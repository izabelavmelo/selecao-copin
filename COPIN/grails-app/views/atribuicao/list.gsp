
<%@ page import="copin.Atribuicao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'atribuicao.label', default: 'Atribuicao')}" />
        <title><g:message code="Lista de avaliadores" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
        	
             <span class="menuButton"><a class="list" href="${createLink(uri: '/chamada/index')}"><g:message code="Lista de chamadas"/></a></span>
        	
       
       </div>
        <div class="body">
            <h2 align="center" size="1"><g:message code="Lista de avaliadores" args="[entityName]" /></h2>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
            
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
                            <h1><g:message code="Avaliador(es)"/></h1>
    
                    <thead>
                        <tr>
                			        
                            <g:sortableColumn property="id" title="${message(code: 'atribuicao.id.label', default: 'Deletar')}" />
                        
                            <th><g:message code="atribuicao.usuarios.label" default="Usuarios" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${atribuicaoInstanceList}" status="i" var="atribuicaoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        <g:if test="${atribuicaoInstance.chamada.id == chamadaInstance.id }">
                        
                        <td>
                        <g:form controller="atribuicao">
                        	<g:hiddenField name="id" value="${atribuicaoInstance?.id}" />
                        	<g:hiddenField name="idChamada" value="${chamadaInstance?.id}" />
            	        				
                        	<span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                
                        </g:form>
                        </td>
                        
                            <td>${fieldValue(bean: atribuicaoInstance?.usuarios, field: "nome")}</td>
                        
                        
                        </g:if>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${atribuicaoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
