<html>
    <head>
        <title>Selecao COPIN</title>
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
            margin-left:280px;
            margin-right:20px;
        }
        </style>
    </head>
    <body>
    �
        <div id="nav">
            <div class="homePagePanel">
                <div class="panelTop"></div>
                <div class="panelBody">
                	<h1>Dados:</h1>
                	<ul>
            			<li><strong>Cliente:</strong> Hyggo Almeida</li>
            			<li><strong>Equipe de </br>desenvolvimento/testes</br>/ger�ncia:</strong> Delano Oliveira, Izabela Melo e Savyo N�brega</li>
            			<li><strong>Professora:</strong> Francilene Proc�pio Garcia</li>
            			<li><strong>Monitores:</strong> David Anderson e Renato Miceli</li>
            		</ul>
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>
        <div id="pageBody">
            <h1>SelecaoCOPIN: um sistema para automatizar o processo de selecao da COPIN</h1>
            <p>O projeto visa o desenvolvimento de um software para gerenciar o processo de sele��o da COPIN (Programa de P�s-Gradua��o em Computa��o), desde o processo de submiss�o da documenta��o on-line pelos candidatos, at� a defini��o do resultado da sele��o de acordo com dados inseridos por professores durante a avalia��o dos candidatos. O software � importante para agilizar o processo de divulga��o de resultados, assim como facilita o acesso � informa��o por parte dos docentes da institui��o.</p>

            <div id="controllerList" class="dialog">
                <h2>Exemplos:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                    </g:each>
                </ul>
            </div>
        </div>
    </body>
</html>
