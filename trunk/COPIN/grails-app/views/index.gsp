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
    ã
        <div id="nav">
            <div class="homePagePanel">
                <div class="panelTop"></div>
                <div class="panelBody">
                	<h1>Dados:</h1>
                	<ul>
            			<li><strong>Cliente:</strong> Hyggo Almeida</li>
            			<li><strong>Equipe de </br>desenvolvimento/testes</br>/gerência:</strong> Delano Oliveira, Izabela Melo e Savyo Nóbrega</li>
            			<li><strong>Professora:</strong> Francilene Procópio Garcia</li>
            			<li><strong>Monitores:</strong> David Anderson e Renato Miceli</li>
            		</ul>
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>
        <div id="pageBody">
            <h1>SelecaoCOPIN: um sistema para automatizar o processo de selecao da COPIN</h1>
            <p>O projeto visa o desenvolvimento de um software para gerenciar o processo de seleção da COPIN (Programa de Pós-Graduação em Computação), desde o processo de submissão da documentação on-line pelos candidatos, até a definição do resultado da seleção de acordo com dados inseridos por professores durante a avaliação dos candidatos. O software é importante para agilizar o processo de divulgação de resultados, assim como facilita o acesso à informação por parte dos docentes da instituição.</p>

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
