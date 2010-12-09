<%@ page import="copin.Chamada" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chamada.label', default: 'Chamada')}" />
        <title><g:message code="Editar chamada" args="[entityName]" /></title>
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
            <span class="menuButton"><a class="home" href="${createLink(uri: '/administrador/perfil')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="Lista de chamadas" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="Editar chamada" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${chamadaInstance}">
            <div class="errors">
                <g:renderErrors bean="${chamadaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${chamadaInstance?.id}" />
                <g:hiddenField name="version" value="${chamadaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                         	<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tituloDaChamada"><g:message code="chamada.tituloDaChamada.label" default="Titulo Da Chamada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'tituloDaChamada', 'errors')}">
                                    <g:textField name="tituloDaChamada" value="${chamadaInstance?.tituloDaChamada}" />
                                </td>
                            </tr>
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tipoDeChamada"><g:message code="chamada.tipoDeChamada.label" default="Tipo De Chamada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'tipoDeChamada', 'errors')}">
                                    <g:textField name="tipoDeChamada" value="${chamadaInstance?.tipoDeChamada}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="texto"><g:message code="chamada.texto.label" default="Texto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'texto', 'errors')}">
                                    <g:textField name="texto" value="${chamadaInstance?.texto}" />
                                </td>
                            </tr>
                            
                           <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dataInicialInscricoes"><g:message code="chamada.dataInicialInscricoes.label" default="Data Inicial Inscricoes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'dataInicialInscricoes', 'errors')}">
                                    <g:datePicker name="dataInicialInscricoes" precision="day" value="${chamadaInstance?.dataInicialInscricoes}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dataFinalInscricoes"><g:message code="chamada.dataFinalInscricoes.label" default="Data Final Inscricoes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'dataFinalInscricoes', 'errors')}">
                                    <g:datePicker name="dataFinalInscricoes" precision="day" value="${chamadaInstance?.dataFinalInscricoes}"  />
                                </td>
                            </tr>      
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vagasDisponiveis"><g:message code="chamada.vagasDisponiveis.label" default="Vagas disponiveis:" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'vagasDisponiveis', 'errors')}">
                                    <g:select from="${0..1000}" name="vagasDisponiveis" value="${chamadaInstance?.vagasDisponiveis}"/>
                                </td>
                            </tr>                  
                           
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="formula"><g:message code="chamada.formula.label" default="Formula" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'formula', 'errors')}">
                                    <g:textField name="formula" value="${chamadaInstance?.formula}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
