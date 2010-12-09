
<%@ page import="copin.Inscricao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
        <title><g:message code="Minhas inscricoes" args="[entityName]" /></title>
    	<style type="text/css" media="screen">
    	.buttons input.visualizar {
    background: transparent url(../images/skin/visualizar1.png) 5px 50% no-repeat;
    padding-left: 28px;
}
</style>
    	
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
            <h1><g:message code="Minhas inscricoes" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'inscricao.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="chamada" title="${message(code: 'inscricao.chamada.label', default: 'Titulo da chamada')}" />
                        
                        	
                            <g:sortableColumn property="tipoDeChamada" title="${message(code: 'inscricao.chamada.label', default: 'Tipo de chamada')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${inscricaoInstanceList}" status="i" var="inscricaoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                        <g:if test="${inscricaoInstance.usuario.id == usuarioInstance}">
                        
                        	
                            <td><g:form class="buttons" controller="inscricao">
                   					<g:hiddenField name="id" value="${inscricaoInstance?.id}" />
            						<span class="button"><g:actionSubmit class="visualizar" action="show" value="Visualizar" ></g:actionSubmit></span></br>
      
            	    		</g:form>
            	    		
                            <td>${fieldValue(bean: inscricaoInstance, field: "chamada.tituloDaChamada")}</td>
                        
                            <td>${fieldValue(bean: inscricaoInstance, field: "chamada.tipoDeChamada")}</td>
                        
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
