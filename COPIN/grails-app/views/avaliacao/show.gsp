
<%@ page import="copin.Avaliacao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'avaliacao.label', default: 'Avaliacao')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <g:if test="${session.usuario}">
			<g:if test="${!session.usuario.ehAdministrador}">

				<g:if test="${session.usuario.ehAvaliador && (avaliacaoInstance.avaliador.id != session.usuario.id)}">
					<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAvaliador')}"/>
				</g:if>
				
				<g:else>
					<g:if test="${!session.usuario.ehAvaliador}">
						<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfil')}"/>
					</g:if>
				</g:else>
			</g:if>
			
		</g:if>
		<g:else>
			<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'index')}"/>
		</g:else>
        
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.mediaGeral.label" default="Media Geral" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "mediaGeral")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.cartasDeRecomendacao.label" default="Cartas De Recomendacao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "cartasDeRecomendacao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.curriculo.label" default="Curriculo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "curriculo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.cartaDeIntencoes.label" default="Carta De Intencoes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "cartaDeIntencoes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.planoDeTrabalho.label" default="Plano De Trabalho" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "planoDeTrabalho")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.inscricao.label" default="Inscricao" /></td>
                            
                            <td valign="top" class="value"><g:link controller="inscricao" action="show" id="${avaliacaoInstance?.inscricao?.id}">${avaliacaoInstance?.inscricao?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.avaliador.label" default="Avaliador" /></td>
                            
                            <td valign="top" class="value"><g:link controller="usuario" action="show" id="${avaliacaoInstance?.avaliador?.id}">${avaliacaoInstance?.avaliador?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${avaliacaoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
