<%@ page import="copin.Usuario" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
    </head>
    <body>
        <div class="body">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
        <div id="pageBody">
			<h1>LOGIN</h1>
			
			<g:form name="formLogin" url="[controller:'usuario',action:'login']">
        	Login: <input type="text" name="login"/><br/>
        	Senha: <input type="password" name="senha"/><br/>
        	<input type="submit" value="Entrar"/>
        	</g:form>
        </div>
    </body>
</html>
