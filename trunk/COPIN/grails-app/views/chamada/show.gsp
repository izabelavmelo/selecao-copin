
<%@ page import="copin.Chamada" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chamada.label', default: 'Chamada')}" />
        <title><g:message code="Chamada" args="[entityName]" /></title>
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
        	
        	.menuButton a.list {
    background: url(../images/skin/listaInscricao2.png) center left no-repeat;
    color: #333;
    padding-left: 28px;
}
        	
        	</style>
    </head>
    <body>
    	<div class="nav">
    	    <g:if test="${session.usuario.ehAdministrador}">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfilAdministrador')}"><g:message code="default.home.label"/></a></span>
            </g:if>
            <g:else>
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
            </g:else>
            <g:if test="${session.usuario.ehAvaliador }"></g:if>
            <g:else><span class="menuButton"><a class="list" href="${createLink(uri: '/chamada/list')}"><g:message code="Lista de chamadas"/></a></span></g:else>
            
        </div>
        <div class="body">
            <h1><g:message code="Chamada" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "id")}</td>
                            
                        </tr>
                    
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.tituloDaChamada.label" default="Titulo da chamada:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "tituloDaChamada")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.tipoDeChamada.label" default="Tipo de chamada:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "tipoDeChamada")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.texto.label" default="Texto:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "texto")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.vagasDisponiveis.label" default="Vagas disponiveis:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "vagasDisponiveis")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.dataInicialInscricoes.label" default="Data inicial das inscricoes:" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${fieldValue(bean: chamadaInstance, field: "DataInicialInscricoes")}"/></td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.dataFinalInscricoes.label" default="Data final das inscricoes:" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${fieldValue(bean: chamadaInstance, field: "DataFinalInscricoes")}"/></td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chamada.formula.label" default="Formula:" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chamadaInstance, field: "formula")}</td>
                            
                        </tr>
                                     
                    </tbody>
                </table>
       
            </div>
            <div class="buttons">
            	 <g:form>
                    <g:hiddenField name="id" value="${chamadaInstance?.id}" />
                    <g:if test="${!session.usuario.ehAdministrador }"> 
               				<span class="button"><g:actionSubmit disabled="true" class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    
               			     <span class="button"><g:actionSubmit disabled="true" class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                    
                    </g:if>
                    <g:else>
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
               
                    </g:else>
                 </g:form>
            </div>
        </div>
    </body>
</html>
