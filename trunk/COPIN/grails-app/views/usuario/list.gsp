
<%@ page import="copin.Usuario" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    
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
            </div>
        <div class="body">
            <h1><g:message code="Lista de usuarios" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'usuario.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="login" title="${message(code: 'usuario.login.label', default: 'Login')}" />
                        
                            <g:sortableColumn property="senha" title="${message(code: 'usuario.senha.label', default: 'Senha')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'usuario.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="email" title="${message(code: 'usuario.email.label', default: 'Email')}" />
                        
                            <g:sortableColumn property="cpf" title="${message(code: 'usuario.cpf.label', default: 'cpf')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: usuarioInstance, field: "login")}</td>
                        
                            <td>${fieldValue(bean: usuarioInstance, field: "senha")}</td>
                        
                            <td>${fieldValue(bean: usuarioInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: usuarioInstance, field: "email")}</td>
                        
                            <td>${fieldValue(bean: usuarioInstance, field: "cpf")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${usuarioInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
