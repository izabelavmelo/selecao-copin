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
    </head>
    <body>
        
        <div id="pageBody">
            <h1>SeleçãoCOPIN: um sistema para automatizar o processo de seleção da COPIN</h1>
            <p>O projeto visa o desenvolvimento de um software para gerenciar o processo de seleção da COPIN (Programa de Pós-Graduação em Computação), desde o processo de submissão da documentação on-line pelos candidatos, até a definição do resultado da seleção de acordo com dados inseridos por professores durante a avaliação dos candidatos. O software é importante para agilizar o processo de divulgação de resultados, assim como facilita o acesso à informação por parte dos docentes da instituição.</p>

			<h1>LOGIN</h1>
			
			<g:form name="formLogin" url="[controller:'usuario',action:'login']">
        	Login: <input type="text" name="login"/><br/>
        	Senha: <input type="password" name="senha"/><br/>
        	<input type="submit" value="Entrar"/>
        	</g:form>

            <div id="controllerList" class="dialog">
                <h2>Para se cadastrar no sistema, clique <g:link controller="usuario" action="create">aqui</g:link></h2>
             </div>
        </div>
        
        
        
    </body>
</html>
