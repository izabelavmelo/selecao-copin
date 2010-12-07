<%@ page import="copin.Usuario" %>
<html>
    <head>
        <title>Seleção COPIN</title>
        <meta name="layout" content="main" />
        
        <style type="text/css" media="screen">

        #nav {
            margin-top:20px;
            margin-left:30px;
            width:228px;
            float:left;

        }
        
        .message {
    	background: #f3f8fc url(../images/skin/information.png) 8px 50% no-repeat;
    	border: 1px solid #b2d1ff;
    	color: #006dba;
    	margin: 10px 0 5px 0;
    	padding: 5px 5px 5px 30px;
    	width:45%;
		}
        
        table {
    		border: 3px solid #ccc;
    		width: 35%;
		}
        
        .homePagePanel * {
            margin:0px;
        }
        .homePagePanel .panelBody ul {
            list-style-type:none;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody h1 {
            text-transform:uppercase;
            font-size:1.1em;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody {
            background: url(images/leftnav_midstretch.png) repeat-y top;
            margin:0px;
            padding:15px;
        }
        .homePagePanel .panelBtm {
            background: url(images/leftnav_btm.png) no-repeat top;
            height:20px;
            margin:0px;
        }

        .homePagePanel .panelTop {
            background: url(images/leftnav_top.png) no-repeat top;
            height:11px;
            margin:0px;
        }
        h2 {
            margin-top:15px;
            margin-bottom:15px;
            font-size:1.2em;
        }
        #pageBody {
            margin-left:20px;
            margin-right:20px;
        }
        </style>
        
        <g:if test="${session.usuario}">
		
			<g:if test="${session.usuario.ehAvaliador}">
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAvaliador')}"/>
			</g:if>
				
			<g:if test="${session.usuario.ehAdministrador}">
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAdministrador')}"/>
			</g:if>
			
			<g:else>
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfil')}"/>
			</g:else>
			
		</g:if>     
        
    </head>
    <body>
        
        <div id="pageBody" align="center">
            
			<h1>LOGIN</h1>
			
			<g:if test="${flash.message}">
            	<div class="message">${flash.message}</div>
            </g:if>
			
			<g:form url="[controller:'usuario',action:'login']" name="loginUsuario">
        	<div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="login"><g:message code="usuario.login.label" default="Login" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuarioInstance, field: 'login', 'errors')}">
                                    <g:textField name="username" value="${usuarioInstance?.login}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"><g:message code="usuario.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuarioInstance, field: 'senha', 'errors')}">
                                    <g:passwordField name="senha" maxlength="20" value="${usuarioInstance?.senha}" />
                                </td>
                            </tr>
                            
                         </tbody>
                    </table>
              </div>
        	
        	<div class="buttons" align="center">
                    <span class="button"><g:submitButton name="login" class="login" value="${message(code: 'default.button.login.label', default: 'Entrar')}" /></span>
            </div>
        	</g:form>

        </div>
                
    </body>
</html>
