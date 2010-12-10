<html>
    <head>
    	<g:if test="${session.usuario}">
		
			<g:if test="${session.usuario.ehAvaliador}">
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAvaliador')}"/>
			</g:if>
				
			<g:if test="${session.usuario.ehAdministrador}">
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAdministrador')}"/>
			</g:if>
			
			<g:else>
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilUsuario')}"/>
			</g:else>
			
		</g:if>
		<g:else>
			<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'index')}"/>
		</g:else>
		
		
    </head>
    
    <body>
    </body>
</html>